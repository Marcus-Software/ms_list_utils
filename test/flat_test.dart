import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

main() {
  test('flat int', () {
    final multiList = [
      1,
      2,
      3,
      [
        4,
        5,
        [6, 7]
      ]
    ];
    final result = flat(multiList);
    expect(result, [1, 2, 3, 4, 5, 6, 7]);
    expect(multiList.flat(), [1, 2, 3, 4, 5, 6, 7]);
  });
  test('flat String', () {
    final multiList = [
      "a",
      "b",
      "c",
      [
        "d",
        "e",
        ["f", "g"]
      ]
    ];
    final result = flat(multiList);
    expect(result, ["a", "b", "c", "d", "e", "f", "g"]);
    expect(multiList.flat(), ["a", "b", "c", "d", "e", "f", "g"]);
  });
  test('flat dynamic', () {
    final multiList = [
      1,
      2,
      3,
      [
        "4",
        "5",
        [
          6,
          7,
          [true, true, false]
        ]
      ]
    ];
    final result = flat(multiList);
    expect(result, [1, 2, 3, "4", "5", 6, 7, true, true, false]);
    expect(multiList.flat(), [1, 2, 3, "4", "5", 6, 7, true, true, false]);
  });
  test('flat dynamic plain list', () {
    final multiList = [
      1,
      2,
      3,
    ];
    final result = flat(multiList);
    expect(result, [1, 2, 3]);
    expect(multiList.flat(), [1, 2, 3]);
  });
}
