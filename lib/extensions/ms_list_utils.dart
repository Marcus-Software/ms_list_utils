import '../functions/functions.dart' as fn;

extension MsListUtils<V> on List<V> {
  /// Returns new list with items generated around [list]
  /// ```dart
  /// final list = ['😁','😒','😊'];
  /// final newList = addAround(list, (index,previous,next) => '🍨');
  /// print(newList);//['🍨','😁','🍨','😒','🍨','😊','🍨']
  /// ```
  List<V> addAround(fn.Generator<V> generate) => fn.addAround(this, generate);

  /// Returns new list with items generated between list.
  List<V> addBetween(fn.Generator<V> generate) => fn.addBetween(this, generate);

  /// Returns the first element that satisfies the test if there isn't one add a new one and return it.
  V firstWhereOrAdd(bool Function(V element) test, fn.OrAdd<V> orAdd) =>
      fn.firstWhereOrAdd<V>(this, test, orAdd);

  /// Returns the last element that satisfies the test if there isn't one add a new one and return it.
  V lastWhereOrAdd(bool Function(V element) test, fn.OrAdd<V> orAdd) =>
      fn.lastWhereOrAdd(this, test, orAdd);

  /// Returns an element following the index, if out of bounds returns null.
  V? next(int index) => fn.next(this, index);

  /// Returns a preceding element in the index, if out of bounds returns null.
  V? previous(int index) => fn.previous(this, index);
}
