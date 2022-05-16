import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

main() {
  test('differences between two lists', () {
    final listA = [1, 2, 3, 4, 5];
    final listB = [2, 4, 6];
    expect(diff(listA, listB), orderedEquals([1, 3, 5]));
    expect(diff(listB, listA), orderedEquals([6]));
    expect(listB - listA, orderedEquals([6]));
    expect(listB.diff(listA), orderedEquals([6]));
  });
}
