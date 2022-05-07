import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function is_last.dart', () {
    final list = [1, 2, 3];
    expect(isLast(list, 1), isFalse);
    expect(isLast(list, 3), isTrue);
    expect(isLastIndex(list, 1), isFalse);
    expect(isLastIndex(list, 2), isTrue);
    expect(list.isLast(1), isFalse);
    expect(list.isLast(3), isTrue);
    expect(list.isLastIndex(1), isFalse);
    expect(list.isLastIndex(2), isTrue);
  });
}
