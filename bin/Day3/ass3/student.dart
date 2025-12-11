import 'user.dart';
import 'book.dart';

class Student extends User {
  List<Book> borrowedBooks = [];

  Student(super.name, super.id);

  void borrowBook(Book book) {
    if (book.availableCopies > 0) {
      book.availableCopies -= 1;
      borrowedBooks.add(book);
      print("$name borrowed ${book.title}");
    } else {
      print("No copies available for ${book.title}");
    }
  }

  void returnBook(Book book) {
    if (borrowedBooks.contains(book)) {
      borrowedBooks.remove(book);
      book.availableCopies += 1;
      print("$name returned ${book.title}");
    } else {
      print("$name did not borrow ${book.title}");
    }
  }
}
