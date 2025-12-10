import 'doctor.dart';

class Surgeon extends Doctor {
  int _numberOfSurgeries = 0;
  Surgeon(
      {required super.id,
      required super.name,
      required super.specialization,
      required super.patients});

  void performSurgery(String patientName) {
    print("Surgeon $name is performing surgery on $patientName");
    _numberOfSurgeries++;
  }

  int get numberOfSurgeries => _numberOfSurgeries;
}
