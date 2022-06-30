import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('tests the function last_where_or_add.dart', () {
    final List<int> list = <int>[1, 2, 3];
    expect(lastWhereOrAdd(list, (Object? value) => value == 4, () => 4), 4);
    expect(list, <int>[1, 2, 3, 4]);
    final List<int> listE = <int>[1, 2, 3];
    expect(listE.lastWhereOrAdd((int value) => value == 4, () => 4), 4);
    expect(listE, <int>[1, 2, 3, 4]);
  });
}
