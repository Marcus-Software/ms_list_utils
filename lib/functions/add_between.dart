part of './functions.dart';

List<V> addBetween<V>(List<V> list, Generator<V> generate) {
  if (list.isEmpty) return [];
  final length = list.length * 2 - 1;
  final newList = <V>[];
  for (var i = 1, j = 0; i <= length; i++) {
    if (i.isEven) {
      newList.add(generate(i, previous<V>(list, j), next<V>(list, j)));
      continue;
    }
    newList.add(list[j++]);
  }
  return newList;
}