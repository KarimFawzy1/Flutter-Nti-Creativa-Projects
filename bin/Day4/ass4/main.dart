import 'doctor.dart';
import 'surgeon.dart';
import 'patient.dart';
import 'hospital.dart';

void main() {
  // Create patients
  Patient patient1 = Patient(
      id: 1, name: "Ahmed Said", age: 22, medicalHistory: ["Blood Pressure"]);
  Patient patient2 = Patient(
      id: 2, name: "Mohamed Ali", age: 25, medicalHistory: ["Diabetes"]);
  Patient patient3 = Patient(
      id: 3, name: "Khaled Ahmed", age: 28, medicalHistory: ["Heart Disease"]);

  // Create doctors
  Doctor doctor1 = Doctor(
      id: 1, name: "Ali Mohamed", specialization: "Cardiology", patients: []);

  Surgeon surgeon1 = Surgeon(
      id: 2, name: "Omar Kamel", specialization: "Surgery", patients: []);

  // Create hospital and register initial data
  Hospital hospital = Hospital(doctors: [], patients: []);
  hospital.hireDoctor(doctor1);
  hospital.hireDoctor(surgeon1);

  hospital.registerPatient(patient1);
  hospital.registerPatient(patient2);
  hospital.registerPatient(patient3);

  // Assign patients to doctor
  hospital.assignPatientToDoctor(patient1, doctor1);
  hospital.assignPatientToDoctor(patient2, doctor1);
  hospital.assignPatientToDoctor(patient3, doctor1);

  // Surgeon performs surgery
  surgeon1.performSurgery(patient2.name);
  surgeon1.performSurgery(patient3.name);

  print("\n===== Doctors & Their Patients =====");
  for (var doctor in [doctor1, surgeon1]) {
    print("\nDoctor: ${doctor.name}");
    print("Specialization: ${doctor.specialization}");
    if (doctor.patients.isEmpty) {
      print("No assigned patients");
    } else {
      print("Assigned Patients:");
      for (var p in doctor.patients) {
        print(" - ${p.name}");
      }
    }
  }

  print("\n===== All Patients =====");
  for (var p in [patient1, patient2, patient3]) {
    print("\nPatient ID: ${p.id}");
    print("Name: ${p.name}");
    print("Age: ${p.age}");
    print("Medical History: ${p.medicalHistory.join(', ')}");
  }

  print(
      "\nTotal surgeries performed by surgeon ${surgeon1.name}: ${surgeon1.numberOfSurgeries}");
}
