part of './functions.dart';

/// Returns the last element that satisfies the test if there isn't one add a new one and return it.
V lastWhereOrAdd<V>(
    List<V> list, bool Function(V element) test, OrAdd<V> orAdd) {
  V? result;
  for (V element in list) {
    if (test(element)) result = element;
  }
  if (result == null) {
    result = orAdd();
    list.add(result!);
  }
  return result;
}
