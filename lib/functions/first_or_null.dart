part of './functions.dart';

V? firstOrNull<V>(List<V> list) {
  if (list.isEmpty) return null;
  return list.first;
}
