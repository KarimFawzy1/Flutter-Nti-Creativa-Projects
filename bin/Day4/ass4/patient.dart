class Patient {
  final int _id;
  final String _name;
  final int _age;
  final List<String> _medicalHistory;
  Patient({
    required int id,
    required String name,
    required int age,
    required List<String> medicalHistory,
  })  : _id = id,
        _name = name,
        _age = age,
        _medicalHistory = medicalHistory;

  int get id => _id;
  String get name => _name;
  int get age => _age;
  List<String> get medicalHistory => _medicalHistory;
}
