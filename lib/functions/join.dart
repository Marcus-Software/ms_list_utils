part of './functions.dart';

String join<V>(List<V> list, [String separator = '', String? last]) {
  Iterator<V> iterator = list.iterator;
  if (!iterator.moveNext()) return "";
  StringBuffer buffer = StringBuffer();
  if (separator.isEmpty) {
    do {
      buffer.write(iterator.current.toString());
    } while (iterator.moveNext());
  } else {
    buffer.write(iterator.current.toString());
    while (iterator.moveNext()) {
      if (isLast(list, iterator.current) && last != null) {
        buffer.write(last);
      } else {
        buffer.write(separator);
      }
      buffer.write(iterator.current.toString());
    }
  }
  return buffer.toString();
}
