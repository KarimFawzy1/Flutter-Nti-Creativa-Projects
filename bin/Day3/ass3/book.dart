class Book {
  final String _title;
  final String _author;
  final int? _year;
  int _availableCopies;

  // Positional constructor (all attributes)
  Book(this._title, this._author, this._availableCopies, [this._year]);

  // Named constructor (initializes title & author only)
  Book.basic({required String title, required String author})
      : _title = title,
        _author = author,
        _availableCopies = 1,
        _year = null;

  String get title => _title;
  String get author => _author;
  int? get year => _year;
  int get availableCopies => _availableCopies;

  set availableCopies(int value) {
    if (value < 0) {
      print("Available copies cannot be negative");
    }
    _availableCopies = value;
  }
}
