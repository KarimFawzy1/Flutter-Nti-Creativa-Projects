import 'doctor.dart';
import 'patient.dart';

class Hospital {
  final List<Doctor> _doctors;
  final List<Patient> _patients;
  Hospital({required List<Doctor> doctors, required List<Patient> patients})
      : _doctors = doctors,
        _patients = patients;

  void hireDoctor(Doctor doctor) {
    _doctors.add(doctor);
    print("Doctor ${doctor.name} is hired");
  }

  void registerPatient(Patient patient) {
    _patients.add(patient);
    print("Patient registered: ${patient.name}");
  }

  void assignPatientToDoctor(Patient patient, Doctor doctor) {
    doctor.patients.add(patient);
    print("Patient ${patient.name} is assigned to doctor ${doctor.name}");
  }
}
