import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function join.dart', () {
    final List<int> list = <int>[1, 2, 3];
    expect(join(list, ', ', ' and '), '1, 2 and 3');
    expect(join(list), '123');
    expect(list.joinLast(', ', ' and '), '1, 2 and 3');
    expect(list.joinLast(), '123');
  });
}
