part of './functions.dart';

typedef GenerateKey<GV, GK> = GK Function(GV value);

Map<K, V> toMap<K, V>(List<V> list, GenerateKey<V, K> generateKey) {
  return Map<K, V>.fromIterables(list.map(generateKey), list);
}
