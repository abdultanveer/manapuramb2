class demo{}

void main()  async{
  print( await createOrderMessage());
}

Future<String> createOrderMessage()async  {
  var order = await prepareCoffee();
  return 'Your order is: $order';
}

Future<String> prepareCoffee() =>
    // Imagine that this function is more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large cappucino',
);

