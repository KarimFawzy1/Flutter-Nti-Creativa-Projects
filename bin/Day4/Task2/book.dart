import 'product.dart';

class Book extends Product {
  Book({required super.name, required super.price});

  @override
  void showDiscount() {
    print("10% discount available, price after discount: ${price * 0.90}");
  }
}
