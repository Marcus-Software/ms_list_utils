import 'package:ms_list_utils/extensions/ms_iterable_utils.dart';
import 'package:ms_list_utils/functions/functions.dart';
import 'package:test/test.dart';

main() {
  test('must group itens by size', () {
    final List<String> source = <String>[
      'Dying Light 1',
      'Dying Light 2',
      'Dead Island 1',
      'Dead Island Riptide',
      'GTA IV',
      'Batman: Arkham City GOTY',
      'F.E.A.R. 1',
      'F.E.A.R. 2',
      'F.E.A.R. 3',
    ];
    final Iterable<Iterable<String>> groupedList3 = groupBySize(source, 3);
    expect(groupedList3, const <List<String>>[
      <String>['Dying Light 1', 'Dying Light 2', 'Dead Island 1'],
      <String>['Dead Island Riptide', 'GTA IV', 'Batman: Arkham City GOTY'],
      <String>['F.E.A.R. 1', 'F.E.A.R. 2', 'F.E.A.R. 3'],
    ]);
    expect(source.groupBySize(3), const <List<String>>[
      <String>['Dying Light 1', 'Dying Light 2', 'Dead Island 1'],
      <String>['Dead Island Riptide', 'GTA IV', 'Batman: Arkham City GOTY'],
      <String>['F.E.A.R. 1', 'F.E.A.R. 2', 'F.E.A.R. 3'],
    ]);
  });
}
