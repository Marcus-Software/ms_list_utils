import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('add values between in list', () {
    final initialValue = <int>[1, 2, 3];
    final result = addBetween<int>(
        initialValue, (int index, previousValue, nextValue) => 5);
    expect(result, [1, 5, 2, 5, 3]);
    expect(
        initialValue.addBetween((index, previous, next) => 5), [1, 5, 2, 5, 3]);
  });
  test('add values between in list', () {
    final initialValue = <int>[1, 2, 3, 4];
    final result = addBetween<int>(
        initialValue, (int index, previousValue, nextValue) => 5);
    expect(result, [1, 5, 2, 5, 3, 5, 4]);
  });
  test('add values between in list with 1 element', () {
    final initialValue = <int>[1];
    final result = addBetween<int>(
        initialValue, (int index, previousValue, nextValue) => 5);
    expect(result, [1]);
  });
  test('add values between in list with no elements', () {
    final initialValue = <int>[];
    final result = addBetween<int>(
        initialValue, (int index, previousValue, nextValue) => 5);
    expect(result, []);
  });
}
