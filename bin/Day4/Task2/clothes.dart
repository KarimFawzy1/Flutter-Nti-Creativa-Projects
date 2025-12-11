import 'product.dart';

class Clothes extends Product {
  Clothes({required super.name, required super.price});

  @override
  void showDiscount() {
    print("15% discount available, price after discount: ${price * 0.85}");
  }
}
