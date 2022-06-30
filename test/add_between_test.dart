import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('add values between in list', () {
    final List<int> initialValue = <int>[1, 2, 3];
    final List<int> result = addBetween<int>(
        initialValue, (int index, int? previousValue, int? nextValue) => 5);
    expect(result, <int>[1, 5, 2, 5, 3]);
    expect(initialValue.addBetween((int index, int? previous, int? next) => 5),
        <int>[1, 5, 2, 5, 3]);
  });
  test('add values between in list', () {
    final List<int> initialValue = <int>[1, 2, 3, 4];
    final List<int> result = addBetween<int>(
        initialValue, (int index, int? previousValue, int? nextValue) => 5);
    expect(result, <int>[1, 5, 2, 5, 3, 5, 4]);
  });
  test('add values between in list with 1 element', () {
    final List<int> initialValue = <int>[1];
    final List<int> result = addBetween<int>(
        initialValue, (int index, int? previousValue, int? nextValue) => 5);
    expect(result, <int>[1]);
  });
  test('add values between in list with no elements', () {
    final List<int> initialValue = <int>[];
    final List<int> result = addBetween<int>(
        initialValue, (int index, int? previousValue, int? nextValue) => 5);
    expect(result, <int>[]);
  });
}
