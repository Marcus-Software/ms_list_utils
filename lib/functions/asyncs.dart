part of 'functions.dart';

/// The current elements of [source] iterable modified by [toElement].
/// Runs in [parallels] and return a [Future<List>].
///
/// Example:
/// ```dart
///   final files = [
///     'file1',
///     'file2',
///     'file3',
///     'file4',
///     'file5',
///     'file6',
///     'file7',
///   ];
///   final result = await mapAsync<String, bool>(files, (file) => upload(file), 3);
///   print(result);
///```
Future<List<R>> mapAsync<V, R>(
    Iterable<V> source, Future<R> Function(V element) toElement,
    [int parallels = 1]) async {
  final List<R> result = <R>[];
  for (final Iterable<V> group in groupBySize(source, parallels)) {
    final List<R> res = await Future.wait(group.map(toElement));
    result.addAll(res);
  }
  return result;
}

/// Iterable elements of [source] with support async function and runs it's in [parallels]
Future<void> forEachAsync<V>(
    Iterable<V> source, Future<void> Function(V elemente) forEach,
    [int parallels = 1]) async {
  for (final Iterable<V> group in groupBySize<V>(source, parallels)) {
    await Future.wait(group.map(forEach));
  }
}

/// Iterable elements of [source] with support async and emits each [forEach] async end
Stream<V> mapAsStream<V>(
    Iterable<V> source, Future<V> Function(V elemente) forEach,
    [int parallels = 1]) async* {
  for (final Iterable<V> group in groupBySize<V>(source, parallels)) {
    for (final V result in (await Future.wait(group.map(forEach)))) {
      yield result;
    }
  }
}
