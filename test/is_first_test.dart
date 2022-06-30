import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function is_first.dart', () {
    final List<int> list = <int>[1, 2, 3];
    expect(isFirst(list, 3), isFalse);
    expect(isFirst(list, 1), isTrue);
    expect(isFirstIndex(list, 3), isFalse);
    expect(isFirstIndex(list, 0), isTrue);
    expect(list.isFirst(3), isFalse);
    expect(list.isFirst(1), isTrue);
    expect(list.isFirstIndex(3), isFalse);
    expect(list.isFirstIndex(0), isTrue);
  });
}
