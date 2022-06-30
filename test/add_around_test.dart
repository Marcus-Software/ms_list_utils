import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('tests the function add_around.dart', () {
    final List<int> initialValue = <int>[1, 2, 3, 4];
    final List<int> result = addAround(initialValue,
        (int index, int? previousValue, int? nextValue) {
      return 5;
    });
    expect(result, <int>[5, 1, 5, 2, 5, 3, 5, 4, 5]);
    expect(initialValue.addAround((int index, int? previous, int? next) => 5),
        <int>[5, 1, 5, 2, 5, 3, 5, 4, 5]);
  });
  test('add around in list with 1 element', () {
    final List<String> initialValue = <String>['.'];
    final List<String> resultFn = addAround(initialValue,
        (int index, String? previousValue, String? nextValue) {
      if (previousValue == null) return '>';
      return '<';
    });
    final List<String> resultEx = initialValue
        .addAround((int index, String? previousValue, String? nextValue) {
      if (previousValue == null) return '>';
      return '<';
    });
    expect(resultFn, const <String>['>', '.', '<']);
    expect(resultEx, const <String>['>', '.', '<']);
  });
  test('add around in list with no elements', () {
    final List<String> initialValue = <String>[];
    final List<String> result = addAround(initialValue,
        (int index, String? previousValue, String? nextValue) {
      return '>';
    });
    expect(result, isEmpty);
  });
}
