import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

main() {
  test('First Where or Null', () {
    //prepare
    final List<int> list = <int>[1, 2, 3, 4, 5, 6, 7, 8];
    //act
    final int? resultNotNullFn =
        firstWhereOrNull(list, (int element) => element == 1);
    final int? resultNullFn =
        firstWhereOrNull(list, (int element) => element == 9);
    final int? resultNotNullEx =
        list.firstWhereOrNull((int element) => element == 1);
    final int? resultNullEx =
        list.firstWhereOrNull((int element) => element == 9);
    //expect
    expect(resultNotNullFn, 1);
    expect(resultNullFn, isNull);
    expect(resultNotNullEx, 1);
    expect(resultNullEx, isNull);
  });
}
