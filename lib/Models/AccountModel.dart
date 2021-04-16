import 'dart:ui';

import 'package:flutter_app/Auth/InputFieldValidator.dart';

class AccountModel  {
  AccountModel(this.FirstName, this.LastName, this.DateOfBirth,
      this.PassportPhoto, this.Address, this.Country, this.State);
  final String FirstName;
  final String LastName;
  final DateTime DateOfBirth;
  final Image PassportPhoto;
  final String Address;
  final String Country;
  final String State;

}
