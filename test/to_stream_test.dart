import 'package:ms_list_utils/ms_list_utils.dart';
import 'package:test/test.dart';

void main() async {
  test('tests the function to_stream.dart', () async {
    await expectLater(<int>[1, 2, 3].toStream(), emitsInOrder(<int>[1, 2, 3]));
    await expectLater(<int>[1, 2, 3].toStream(const Duration(milliseconds: 85)),
        emitsInOrder(<int>[1, 2, 3]));
    await expectLater(toStream(<int>[1, 2, 3]), emitsInOrder(<int>[1, 2, 3]));
  });
}
