import 'user.dart';
import 'book.dart';

class Librarian extends User {
  Librarian(super.name, super.id);

  void addBook(List<Book> list, Book book) {
    // book list

    list.add(book);
    print("Book added: ${book.title}");
  }

  void removeBook(List<Book> list, Book book) {
    if (list.contains(book)) {
      list.remove(book);
      print("Book removed: ${book.title}");
    } else {
      print("Book not found in library");
    }
  }
}
