part of 'functions.dart';

/// Elements that you have in [listA] and do not have in [listB].
List<V> diff<V>(Iterable<V> listA, Iterable<V> listB) {
  final List<V> diff = <V>[];
  for (final V value in listA) {
    if (!listB.contains(value)) {
      diff.add(value);
    }
  }
  return diff;
}
