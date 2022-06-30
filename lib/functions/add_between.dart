part of './functions.dart';

/// Returns new list with items generated between list.
List<V> addBetween<V>(List<V> list, Generator<V> generate) {
  if (list.isEmpty) return [];
  final int length = list.length * 2 - 1;
  final List<V> newList = <V>[];
  for (int i = 1, j = 0; i <= length; i++) {
    if (i.isEven) {
      newList.add(generate(i, previous<V>(list, j), next<V>(list, j)));
      continue;
    }
    newList.add(list[j++]);
  }
  return newList;
}
