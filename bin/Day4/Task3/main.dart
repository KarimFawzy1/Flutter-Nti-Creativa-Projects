import 'payment.dart';

void main() {
  CreditCard creditCard = CreditCard();
  PayPal payPal = PayPal();
  CashOnDelivery cashOnDelivery = CashOnDelivery();

  creditCard.pay(100);
  payPal.pay(100);
  cashOnDelivery.pay(100);
}
