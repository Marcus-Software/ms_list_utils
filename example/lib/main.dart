// ignore_for_file: avoid_print

import 'package:ms_list_utils/ms_list_utils.dart';

void main() {
  final multiList = [
    'foo',
    'bar',
    ['pão de queijo', 'queijo com goiabada', 'frango caipira com quiabo']
  ];

  final flatList = multiList.flat();
  print(
      flatList); //[foo, bar, pão de queijo, queijo com goiabada, frango caipira com quiabo]

  print(flatList.next(0)); //"bar"
  print(flatList.previous(0)); //null
  print(flatList.isLast("foo")); // false
  print(flatList.isFirst('foo')); // true
  print(flatList.sublist(2).joinLast(', ',
      ' e ')); // pão de queijo, queijo com goiabada and frango caipira com quiabo
  print(flatList.toMap((value) => flatList.indexOf(
      value))); // {0: foo, 1: bar, 2: pão de queijo, 3: queijo com goiabada, 4: frango caipira com quiabo}

  final emptyList = <String>[];

  print(emptyList.firstOrNull); //null
  print(emptyList.lastOrNull); //null

  final foo =
      emptyList.firstWhereOrAdd((element) => element == "foo", () => "foo");
  print(foo); //foo

  emptyList.firstWhereOrAdd((element) => element == "foo", () => "foo");
  final fooTheReturn =
      emptyList.firstWhereOrAdd((element) => element == "foo", () => "foo");
  print(fooTheReturn); //foo
  print(emptyList); //[foo]

  final bar =
      emptyList.firstWhereOrAdd((element) => element == "bar", () => "bar");

  print(bar); //bar
  print(emptyList); //[foo, bar]
  print(emptyList.firstOrNull); //null
  print(emptyList.lastOrNull); //null
}
