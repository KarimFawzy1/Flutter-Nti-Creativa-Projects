import 'student.dart';
import 'book.dart';

void generateReport(List<Book> books, List<Student> students) {
  print("\n===== Library Report =====");

  print("\n-- Available Books --");
  for (var book in books) {
    print("${book.title} — Copies: ${book.availableCopies}");
  }

  print("\n-- Borrowed Books by Students --");
  for (var student in students) {
    print("\n${student.name}:");
    if (student.borrowedBooks.isEmpty) {
      print("  No borrowed books");
    } else {
      for (var book in student.borrowedBooks) {
        print("  • ${book.title}");
      }
    }
  }
}
