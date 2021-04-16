import 'dart:ui';

class EmployeeModel {
  EmployeeModel(
      this.FirstName,
      this.LastName,
      this.Gender,
      this.Designation,
      this.DateOfBirth,
      this.PassportPhoto,
      this.Address,
      this.Country,
      this.State);
  final String FirstName;
  final String LastName;
  final String Gender;
  final String Designation;
  final DateTime DateOfBirth;
  final Image PassportPhoto;
  final String Address;
  final String Country;
  final String State;
}
