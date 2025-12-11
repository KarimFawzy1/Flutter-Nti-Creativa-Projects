import 'book.dart';
import 'student.dart';
import 'librarian.dart';
import 'report.dart';

void main() {
  var book1 = Book("Algorithms", "Ahmed Mohamed", 3, 2021);
  var book2 = Book.basic(title: "Data Analysis", author: "khaled Ali");

  List<Book> libraryBooks = [book1, book2];

  var student1 = Student("Fawzy", 101);
  var student2 = Student("Hossam", 102);

  List<Student> students = [student1, student2];

  var librarian = Librarian("Mr. Ahmed", 1);

  student1.borrowBook(book1);
  student1.borrowBook(book2);
  student2.borrowBook(book1);
  student2.borrowBook(book1);
  student2.borrowBook(book1);
  student1.returnBook(book1);
  student2.borrowBook(book1);

  librarian.addBook(libraryBooks, Book("Flutter", "Hassan", 5));
  librarian.removeBook(libraryBooks, book2);
  generateReport(libraryBooks, students);
}
