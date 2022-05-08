import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function add_around.dart', () {
    final initialValue = [1, 2, 3, 4];
    final result = addAround(initialValue,
        (int index, int? previousValue, int? nextValue) {
      return 5;
    });
    expect(result, [5, 1, 5, 2, 5, 3, 5, 4, 5]);
    expect(initialValue.addAround((index, previous, next) => 5),
        [5, 1, 5, 2, 5, 3, 5, 4, 5]);
  });
  test('add around in list with 1 element', () {
    final initialValue = ['.'];
    final result = addAround(initialValue,
        (int index, String? previousValue, String? nextValue) {
      if (previousValue == null) return '>';
      return '<';
    });
    expect(result, ['>', '.', '<']);
  });
  test('add around in list with no elements', () {
    final initialValue = <String>[];
    final result = addAround(initialValue,
        (int index, String? previousValue, String? nextValue) {
      return '>';
    });
    expect(result, isEmpty);
  });
}
