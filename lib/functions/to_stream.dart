part of './functions.dart';

Stream<V> toStream<V>(List<V> list, [Duration? interval]) async* {
  for (var element in list) {
    if (interval != null) await Future.delayed(interval);
    yield element;
  }
}
