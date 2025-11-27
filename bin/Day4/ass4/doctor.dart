import 'patient.dart';

class Doctor {
  final int _id;
  final String _name;
  final String _specialization;
  final List<Patient> _patients;
  Doctor({
    required int id,
    required String name,
    required String specialization,
    required List<Patient> patients,
  })  : _id = id,
        _name = name,
        _specialization = specialization,
        _patients = patients;

  int get id => _id;
  String get name => _name;
  String get specialization => _specialization;
  List<Patient> get patients => _patients;
}
