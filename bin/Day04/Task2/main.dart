import 'book.dart';
import 'electronics.dart';
import 'clothes.dart';

void main() {
  Book book = Book(name: "The Great Gatsby", price: 100);
  Electronics electronics = Electronics(name: "Laptop", price: 2000);
  Clothes clothes = Clothes(name: "T-Shirt", price: 80);

  book.showDiscount();
  electronics.showDiscount();
  clothes.showDiscount();
}
