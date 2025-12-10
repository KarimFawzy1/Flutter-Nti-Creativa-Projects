void main() async {
  print('Start');
  await setUpTea();
  await pourTea();
  await drinkTea();
  print('End');
}

Future<void> setUpTea() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print('Setting up the tea'),
  );
}

Future<void> pourTea() {
  return Future.delayed(
    Duration(seconds: 1),
    () => print('Pouring the tea'),
  );
}

Future<void> drinkTea() {
  return Future.delayed(
    Duration(seconds: 3),
    () => print('Drinking the tea'),
  );
}
