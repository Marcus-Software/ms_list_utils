part of 'functions.dart';

/// Common elements between [listA] and [listB]
///
/// In set theory, the intersection of a collection of sets is the set that
/// contains their shared elements. Given two sets, A = {2, 3, 4, 7, 10} and B = {1, 3, 5, 7, 9}, their intersection is as follows:
/// A ∩ B = {3, 7}
List<V> intersection<V>(List<V> listA, List<V> listB) {
  final intersection = <V>[];
  for (final value in listA) {
    if (listB.contains(value)) {
      intersection.add(value);
    }
  }
  return intersection;
}
