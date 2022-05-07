part of './functions.dart';

V lastWhereOrAdd<V>(
    List<V> list, bool Function(V element) test, OrAdd<V> orAdd) {
  V? result;
  for (var element in list) {
    if (test(element)) result = element;
  }
  if (result == null) {
    result = orAdd();
    list.add(result!);
  }
  return result;
}
