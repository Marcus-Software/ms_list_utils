part of './functions.dart';

/// Returns new list with items generated around [list]
/// ```dart
/// final list = ['😁','😒','😊'];
/// final newList = addAround(list, (index,previous,next) => '🍨');
/// print(newList);//['🍨','😁','🍨','😒','🍨','😊','🍨']
/// ```
List<V> addAround<V>(List<V> list, Generator<V> generator) {
  if (list.isEmpty) return [];
  final length = list.length * 2 + 2;
  final newList = <V>[];
  for (var i = 1, j = 0; i < length; i++) {
    if (i.isOdd) {
      newList.add(generator(i, previous<V>(list, j), next<V>(list, j)));
      continue;
    }
    newList.add(list[j++]);
  }
  return newList;
}

/// Returns a preceding element in the index, if out of bounds returns null.
V? previous<V>(List<V> list, int index) {
  return index == 0 ? null : list[index - 1];
}

/// Returns an element following the index, if out of bounds returns null.
V? next<V>(List<V> list, int index) {
  index++;
  return index >= list.length ? null : list[index];
}

/// Type definition for callback that creates a new object based on index, previous and or next
typedef Generator<G> = G Function(int index, G? previous, G? next);
