import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function first_where_or_add.dart', () {
    final list = [1, 2, 3];
    expect(firstWhereOrAdd(list, (value) => value == 4, () => 4), 4);
    expect(list, [1, 2, 3, 4]);
    final listE = [1, 2, 3];
    expect(listE.firstWhereOrAdd((value) => value == 4, () => 4), 4);
    expect(listE, [1, 2, 3, 4]);
  });
}
