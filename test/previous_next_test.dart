import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

main() {
  test('previous', () {
    final List<int> list = <int>[1, 2, 3];
    expect(list.previous(1), 1);
    expect(list.previous(0), isNull);
  });
  test('next', () {
    final List<int> list = <int>[1, 2, 3];
    expect(list.next(2), isNull);
    expect(list.next(0), 2);
  });
}
