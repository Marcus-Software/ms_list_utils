import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() {
  test('tests the function to_map.dart', () {
    final List<int> list = <int>[1, 2, 3];
    expect(toMap<String, int>(list, (int value) => value.toString()),
        <String, int>{'1': 1, '2': 2, '3': 3});
    expect(list.toMap((int value) => "$value"),
        <String, int>{'1': 1, '2': 2, '3': 3});
  });
}
