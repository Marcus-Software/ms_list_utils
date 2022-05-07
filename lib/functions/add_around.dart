part of './functions.dart';

/// Retorna nova lista com itens gerado ao redor da [lista]
///
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

V? previous<V>(List<V> list, int index) {
  return index == 0 ? null : list[index - 1];
}

V? next<V>(List<V> list, int index) {
  return index >= list.length ? null : list[index];
}

typedef Generator<G> = G Function(int index, G? previous, G? next);
