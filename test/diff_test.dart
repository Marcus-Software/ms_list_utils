import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

main() {
  test('differences between two lists', () {
    final List<int> listA = <int>[1, 2, 3, 4, 5];
    final List<int> listB = <int>[2, 4, 6];
    expect(diff(listA, listB), orderedEquals(<int>[1, 3, 5]));
    expect(diff(listB, listA), orderedEquals(<int>[6]));
    expect(listB - listA, orderedEquals(<int>[6]));
    expect(listB.diff(listA), orderedEquals(<int>[6]));
  });
}
