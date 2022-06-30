import 'package:ms_list_utils/ms_list_utils.dart' as fn;
import 'package:test/test.dart';

main() {
  test('contains all elements of another list', () {
    final List<String> hamburger = <String>[
      '🫓',
      '🥬',
      '🍅',
      '🧀',
      '🍳',
      '🥩',
      '🥓',
      '🫓'
    ];
    final List<String> proteins = <String>['🍳', '🥩', '🥓'];
    final List<String> fruits = <String>['🍏', '🍉', '🍇', '🍌', '🍑', '🍋'];
    expect(fn.containsAll(hamburger, proteins), isTrue);
    expect(fn.containsAll(hamburger, fruits), isFalse);
    expect(hamburger.containsAll(proteins), isTrue);
    expect(hamburger.containsAll(fruits), isFalse);
  });

  test('contains any elements of another list', () {
    final List<String> hamburger = <String>[
      '🫓',
      '🥬',
      '🍅',
      '🧀',
      '🍳',
      '🥩',
      '🥓',
      '🫓'
    ];
    final List<String> proteins = <String>['🍳', '🥩', '🥓'];
    final List<String> fruits = <String>['🍏', '🍉', '🍇', '🍌', '🍑', '🫓'];
    final List<String> vehicles = <String>['🚓', '🚗', '🚘', '🚙', '🏎️', '🚞'];
    expect(fn.containsAny(hamburger, proteins), isTrue);
    expect(fn.containsAny(hamburger, fruits), isTrue);
    expect(fn.containsAny(hamburger, vehicles), isFalse);
    expect(hamburger.containsAny(proteins), isTrue);
    expect(hamburger.containsAny(fruits), isTrue);
    expect(hamburger.containsAny(vehicles), isFalse);
  });

  test('count of items that hit both lists', () {
    final List<String> hamburger = <String>[
      '🫓',
      '🥬',
      '🍅',
      '🧀',
      '🍳',
      '🥩',
      '🥓',
      '🫓'
    ];
    final List<String> proteins = <String>['🍳', '🥩', '🥓'];
    final List<String> fruits = <String>['🍏', '🍉', '🍇', '🍌', '🍑', '🫓'];
    final List<String> vehicles = <String>['🚓', '🚗', '🚘', '🚙', '🏎️', '🚞'];
    expect(fn.containsHits(hamburger, proteins), 3);
    expect(fn.containsHits(hamburger, fruits), 1);
    expect(fn.containsHits(hamburger, vehicles), 0);
    expect(hamburger.containsHits(proteins), 3);
    expect(hamburger.containsHits(fruits), 1);
    expect(hamburger.containsHits(vehicles), 0);
  });

  test('contains at least 2 elements of another list', () {
    final List<String> hamburger = <String>[
      '🫓',
      '🥬',
      '🍅',
      '🧀',
      '🍳',
      '🥩',
      '🥓',
      '🫓'
    ];
    final List<String> proteins = <String>['🍳', '🥩', '🥓'];
    final List<String> fruits = <String>['🍏', '🍉', '🍇', '🍌', '🍑', '🍋'];
    expect(fn.containsAtLeast(hamburger, proteins, 2), isTrue);
    expect(fn.containsAtLeast(hamburger, fruits, 2), isFalse);
    expect(hamburger.containsAtLeast(proteins, 2), isTrue);
    expect(hamburger.containsAtLeast(fruits, 2), isFalse);
  });
}
