part of 'functions.dart';

/// Check if all elements in the [listB] is contains in the [listA]
bool containsAll<E>(Iterable<E> listA, Iterable<E> listB) {
  var result = true;
  for (final element in listB) {
    if (!listA.contains(element)) {
      return false;
    }
  }
  return result;
}

/// Check if any elements in the [listB] is contains in the [listA]
bool containsAny<E>(Iterable<E> listA, Iterable<E> listB) {
  var result = false;
  for (final element in listB) {
    if (listA.contains(element)) {
      return true;
    }
  }
  return result;
}

/// Check if [atLeast] elements in the [listB] is contains in the [listA]
bool containsAtLeast<E>(Iterable<E> listA, Iterable<E> listB, int atLeast) {
  var matches = containsHits(listA, listB);
  return matches >= atLeast;
}

/// Count of items that hit both lists
int containsHits<E>(Iterable<E> listA, Iterable<E> listB) {
  var hits = 0;
  for (final element in listB) {
    if (listA.contains(element)) {
      hits++;
    }
  }
  return hits;
}
