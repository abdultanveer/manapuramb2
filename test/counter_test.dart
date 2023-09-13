import 'package:test/test.dart';

import '../lib/counter.dart';

main(){
  Counter counter = Counter();
  counter.increment();
  int expected = 2;
  int actual = counter.value;
  test('test increment method', () => expect(actual,expected));

}