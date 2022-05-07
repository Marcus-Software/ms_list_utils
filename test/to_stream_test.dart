import 'package:test/test.dart';
import 'package:ms_list_utils/ms_list_utils.dart';

void main() async {
  test('tests the function to_stream.dart', () async {
    await expectLater([1, 2, 3].toStream(), emitsInOrder([1, 2, 3]));
    await expectLater([1, 2, 3].toStream(const Duration(milliseconds: 85)),
        emitsInOrder([1, 2, 3]));
    await expectLater(toStream([1, 2, 3]), emitsInOrder([1, 2, 3]));
  });
}
