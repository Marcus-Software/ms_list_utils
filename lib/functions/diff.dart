part of 'functions.dart';

/// Elements that you have in [listA] and do not have in [listB].
List<V> diff<V>(List<V> listA, List<V> listB) {
  final diff = <V>[];
  for (final value in listA) {
    if (!listB.contains(value)) {
      diff.add(value);
    }
  }
  return diff;
}
