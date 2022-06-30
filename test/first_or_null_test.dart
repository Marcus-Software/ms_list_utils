import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('tests the function first_or_null.dart', () {
    final List<int> emptyList = <int>[];
    final List<int> list = <int>[1, 2, 3];
    expect(firstOrNull(emptyList), isNull);
    expect(firstOrNull(list), 1);
    expect(emptyList.firstOrNull, isNull);
    expect(list.firstOrNull, 1);
  });
}
