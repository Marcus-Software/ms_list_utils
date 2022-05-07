part of './functions.dart';

bool isLast<V>(List<V> list, V element) {
  return lastOrNull<V>(list) == element;
}

bool isLastIndex<V>(List<V> list, int index) {
  return list.length - 1 == index;
}
