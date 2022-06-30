part of './functions.dart';

/// Returns a true value if element is the first in the list.
bool isFirst<V>(Iterable<V> list, V element) {
  return firstOrNull<V>(list) == element;
}

/// Returns a true value if index is the first in the list.
bool isFirstIndex<V>(Iterable<V> list, int index) {
  return index == 0;
}
