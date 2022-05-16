import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

main() {
  test('intersection between two lists', () {
    final listA = [1, 2, 3, 4, 5];
    final listB = [2, 4, 6];
    expect(intersection(listA, listB), orderedEquals([2, 4]));
    expect(listA.intersection(listB), orderedEquals([2, 4]));
  });
}
