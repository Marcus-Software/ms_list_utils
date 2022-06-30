part of 'functions.dart';

/// Groups the items from the list [source] into sub-lists of the size given in [sizeEachList]
///
/// Example:
/// ```dart
/// final List source = [
///   'Dying Light 1',
///   'Dying Light 2',
///   'Dead Island 1',
///   'Dead Island Riptide',
///   'GTA IV',
///   'Batman: Arkham City GOTY',
///   'F.E.A.R. 1',
///   'F.E.A.R. 2',
///   'F.E.A.R. 3',
/// ];
/// final groupedList3 = groupBySize(source, 3);
/// print(groupedList3.toString());
/// //[
/// // [Dying Light 1, Dying Light 2, Dead Island 1],
/// // [Dead Island Riptide, GTA IV, Batman: Arkham City GOTY],
/// // [F.E.A.R. 1, F.E.A.R. 2, F.E.A.R. 3]
/// //]
/// ```
Iterable<Iterable<V>> groupBySize<V>(Iterable<V> source, int sizeEachList) {
  return source.toList().fold<List<List<V>>>([],
      (List<List<V>> value, V element) {
    if (value.isEmpty || value.last.length == sizeEachList) {
      value.add(<V>[element]);
    } else {
      value.last.add(element);
    }
    return value;
  });
}
