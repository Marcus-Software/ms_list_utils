part of './functions.dart';

/// Returns last element in array, if it's empty returns null.
V? lastOrNull<V>(Iterable<V> list) {
  if (list.isEmpty) return null;
  return list.last;
}
