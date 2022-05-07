part of './functions.dart';

typedef OrAdd<O> = O Function();

V firstWhereOrAdd<V>(
    List<V> list, bool Function(V element) test, OrAdd<V> orAdd) {
  for (var element in list) {
    if (test(element)) return element;
  }
  var newElement = orAdd();
  list.add(newElement);
  return newElement;
}
