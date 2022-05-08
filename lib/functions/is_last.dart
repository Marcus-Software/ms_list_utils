part of './functions.dart';

///  Returns a true value if element is the last in the list.
bool isLast<V>(List<V> list, V element) {
  return lastOrNull<V>(list) == element;
}

///  Returns a true value if index is the last in the list.
bool isLastIndex<V>(List<V> list, int index) {
  return list.length - 1 == index;
}
