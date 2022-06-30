part of './functions.dart';

T? lastWhereOrNull<T>(Iterable<T> iterable, bool Function(T element) test) {
  T? result;
  for (final T element in iterable) {
    if (test(element)) {
      result = element;
    }
  }
  return result;
}
