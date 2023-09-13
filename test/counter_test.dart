import 'package:test/test.dart';

import '../lib/counter.dart';

main(){
  Counter counter = Counter();
  counter.increment();
  int expected = 1;
  int actual = counter.value;
  expect(expected,actual);
}