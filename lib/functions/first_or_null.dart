part of './functions.dart';

/// Returns first element in array, if it's empty returns null.
V? firstOrNull<V>(Iterable<V> list) {
  if (list.isEmpty) return null;
  return list.first;
}
