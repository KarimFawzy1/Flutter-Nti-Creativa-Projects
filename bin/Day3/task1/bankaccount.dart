class bankaccount {
  double _balance = 1000;

  set deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  set withdraw(double amount) {
    if (_balance > amount) {
      _balance -= amount;
    }
  }

  get balance => _balance;
}
