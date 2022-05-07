library ms_list_utils;

import './functions/functions.dart' as fn;
export './functions/functions.dart';

extension MsListUtils<V> on List<V> {
  List<V> addAround(fn.Generator<V> generate) => fn.addAround(this, generate);

  List<V> addBetween(fn.Generator<V> generate) => fn.addBetween(this, generate);

  V? previous(int index) => fn.previous(this, index);

  V? next(int index) => fn.next(this, index);

  V? get firstOrNull => fn.firstOrNull(this);

  V? get lastOrNull => fn.lastOrNull(this);

  V firstWhereOrAdd(bool Function(V element) test, fn.OrAdd<V> orAdd) =>
      fn.firstWhereOrAdd(this, test, orAdd);

  V lastWhereOrAdd(bool Function(V element) test, fn.OrAdd<V> orAdd) =>
      fn.lastWhereOrAdd(this, test, orAdd);

  bool isFirst(V element) => fn.isFirst(this, element);

  bool isFirstIndex(int index) => fn.isFirstIndex(this, index);

  bool isLast(V element) => fn.isLast(this, element);

  bool isLastIndex(int index) => fn.isLastIndex(this, index);

  String joinLast([String separator = '', String? last]) =>
      fn.join(this, separator, last);

  Map<K, V> toMap<K>(fn.GenerateKey<V, K> generateKey) =>
      fn.toMap(this, generateKey);

  Stream<V> toStream([Duration? interval]) => fn.toStream(this, interval);
}
