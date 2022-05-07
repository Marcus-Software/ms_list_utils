part of './functions.dart';

bool isFirst<V>(List<V> list, V element) {
  return firstOrNull<V>(list) == element;
}

bool isFirstIndex<V>(List<V> list, int index) {
  return index == 0;
}
