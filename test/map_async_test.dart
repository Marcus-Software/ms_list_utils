import 'package:ms_list_utils/extensions/ms_iterable_utils.dart';
import 'package:ms_list_utils/functions/functions.dart';
import 'package:test/test.dart';

main() {
  test('deve rodar de 2 em 2 em ~4 segundos', () async {
    final List<int> listTest = <int>[1, 2, 3, 4, 5, 6, 7, 8];
    final DateTime start = DateTime.now();
    final List<int> result =
        await mapAsync<int, int>(listTest, (int element) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      return element * element;
    }, 2);
    final DateTime end = DateTime.now();
    expect(result,
        const <int>[1 * 1, 2 * 2, 3 * 3, 4 * 4, 5 * 5, 6 * 6, 7 * 7, 8 * 8]);
    expect(
        end.difference(start).abs(), greaterThan(const Duration(seconds: 4)));
  });

  test('forEachAsync', () async {
    final List<int> listTest = <int>[1, 2, 3, 4, 5, 6, 7, 8];
    int hitsFn = 0;
    await forEachAsync<int>(listTest, (int element) async {
      await Future<int>.value(element * element);
      hitsFn++;
    }, 2);
    int hitsEx = 0;
    await listTest.forEachAsync((int element) async {
      await Future<int>.value(element * element);
      hitsEx++;
    }, 2);
    expect(hitsFn, 8);
    expect(hitsEx, 8);
  });

  test('forEachStream', () async {
    final List<int> listTest = <int>[1, 2, 3, 4, 5, 6, 7, 8];
    expect(
        mapAsStream<int>(listTest, (int element) async {
          return await Future<int>.value(element * element);
        }, 2),
        emitsInOrder(
            <int>[1 * 1, 2 * 2, 3 * 3, 4 * 4, 5 * 5, 6 * 6, 7 * 7, 8 * 8]));
    expect(
        listTest.mapAsStream((int element) async {
          return await Future<int>.value(element * element);
        }, 2),
        emitsInOrder(
            <int>[1 * 1, 2 * 2, 3 * 3, 4 * 4, 5 * 5, 6 * 6, 7 * 7, 8 * 8]));
  });
}
