part of './functions.dart';

/// Flatting a [list] that has other lists inside other lists inside other lists ... recursive
/// ```dart
/// final multiList = ["Marcus", "Ana", "Emanuel", ["PC", "Xbox", "Books"]];
/// multiList.flat();// ["Marcus", "Ana", "Emanuel", "PC", "Xbox", "Books"]
/// ```
List<V> flat<V>(List list) {
  return list
      .expand((element) => element is List ? flat(element) : [element])
      .cast<V>()
      .toList();
}
