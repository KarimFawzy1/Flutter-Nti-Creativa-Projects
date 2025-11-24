abstract class Payment {
  void pay(double amount);
}

class CreditCard extends Payment {
  @override
  void pay(double amount) {
    print("Paying $amount with credit card");
  }
}

class PayPal extends Payment {
  @override
  void pay(double amount) {
    print("Paying $amount with PayPal");
  }
}

class CashOnDelivery extends Payment {
  @override
  void pay(double amount) {
    print("Paying $amount with Cash On Delivery");
  }
}
