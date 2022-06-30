part of './functions.dart';

/// Flatting a [list] that has other lists inside other lists inside other lists ... recursive
/// ```dart
/// final multiList = ["Marcus", "Ana", "Emanuel", ["PC", "Xbox", "Books"]];
/// multiList.flat();// ["Marcus", "Ana", "Emanuel", "PC", "Xbox", "Books"]
/// ```
List<V> flat<V>(Iterable<V> list) {
  return list
      .expand((V element) => element is List ? flat(element) : <V>[element])
      .cast<V>()
      .toList();
}
