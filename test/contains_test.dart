import 'package:ms_list_utils/ms_list_utils.dart' as fn;
import 'package:test/test.dart';
import '';

main() {
  test('contains all elements of another list', () {
    final hamburger = ['🫓', '🥬', '🍅', '🧀', '🍳', '🥩', '🥓', '🫓'];
    final proteins = ['🍳', '🥩', '🥓'];
    final fruits = ['🍏', '🍉', '🍇', '🍌', '🍑', '🍋'];
    expect(fn.containsAll(hamburger, proteins), isTrue);
    expect(fn.containsAll(hamburger, fruits), isFalse);
  });

  test('contains any elements of another list', () {
    final hamburger = ['🫓', '🥬', '🍅', '🧀', '🍳', '🥩', '🥓', '🫓'];
    final proteins = ['🍳', '🥩', '🥓'];
    final fruits = ['🍏', '🍉', '🍇', '🍌', '🍑', '🫓'];
    final vehicles = ['🚓', '🚗', '🚘', '🚙', '🏎️', '🚞'];
    expect(fn.containsAny(hamburger, proteins), isTrue);
    expect(fn.containsAny(hamburger, fruits), isTrue);
    expect(fn.containsAny(hamburger, vehicles), isFalse);
  });

  test('count of items that hit both lists', () {
    final hamburger = ['🫓', '🥬', '🍅', '🧀', '🍳', '🥩', '🥓', '🫓'];
    final proteins = ['🍳', '🥩', '🥓'];
    final fruits = ['🍏', '🍉', '🍇', '🍌', '🍑', '🫓'];
    final vehicles = ['🚓', '🚗', '🚘', '🚙', '🏎️', '🚞'];
    expect(fn.containsHits(hamburger, proteins), 3);
    expect(fn.containsHits(hamburger, fruits), 1);
    expect(fn.containsHits(hamburger, vehicles), 0);
  });

  test('contains at least 2 elements of another list', () {
    final hamburger = ['🫓', '🥬', '🍅', '🧀', '🍳', '🥩', '🥓', '🫓'];
    final proteins = ['🍳', '🥩', '🥓'];
    final fruits = ['🍏', '🍉', '🍇', '🍌', '🍑', '🍋'];
    expect(fn.containsAtLeast(hamburger, proteins, 2), isTrue);
    expect(fn.containsAtLeast(hamburger, fruits, 2), isFalse);
  });
}
