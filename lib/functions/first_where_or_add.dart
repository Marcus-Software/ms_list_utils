part of './functions.dart';

/// Type of the callback that's called when has no one element in [firstWhereOrAdd] and [lastWhereOrAdd]
typedef OrAdd<O> = O Function();

/// Returns the first element that satisfies the test if there isn't one add a new one and return it.
V firstWhereOrAdd<V>(
    List<V> list, bool Function(V element) test, OrAdd<V> orAdd) {
  for (final V element in list) {
    if (test(element)) return element;
  }
  V newElement = orAdd();
  list.add(newElement);
  return newElement;
}
