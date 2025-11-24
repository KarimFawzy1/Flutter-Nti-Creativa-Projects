import 'product.dart';

class Electronics extends Product {
  Electronics({required super.name, required super.price});

  @override
  void showDiscount() {
    print("20% discount available, price after discount: ${price * 0.80}");
  }
}
