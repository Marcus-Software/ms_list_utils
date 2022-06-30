import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('tests the function last_or_null.dart', () {
    final List<int> emptyList = <int>[];
    final List<int> list = <int>[1, 2, 3];
    expect(lastOrNull(emptyList), null);
    expect(lastOrNull(list), 3);
    expect(emptyList.lastOrNull, null);
    expect(list.lastOrNull, 3);
  });
}
