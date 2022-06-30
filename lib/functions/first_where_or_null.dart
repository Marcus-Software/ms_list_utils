part of './functions.dart';

T? firstWhereOrNull<T>(Iterable<T> iterable, bool Function(T element) test) {
  for (final T element in iterable) {
    if (test(element)) {
      return element;
    }
  }
  return null;
}
