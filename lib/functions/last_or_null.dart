part of './functions.dart';

V? lastOrNull<V>(List<V> list) {
  if (list.isEmpty) return null;
  return list.last;
}
