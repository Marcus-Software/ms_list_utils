part of './functions.dart';

/// Creates a stream with the items in the list.
Stream<V> toStream<V>(List<V> list, [Duration? interval]) async* {
  for (var element in list) {
    if (interval != null) await Future.delayed(interval);
    yield element;
  }
}
