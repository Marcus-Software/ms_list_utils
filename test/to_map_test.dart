import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  test('tests the function to_map.dart', () {
    final list = [1, 2, 3];
    expect(toMap<String, int>(list, (value) => value.toString()),
        {'1': 1, '2': 2, '3': 3});
    expect(list.toMap((value) => "$value"), {'1': 1, '2': 2, '3': 3});
  });
}
