abstract class validator {
  bool Isvalid(String validators);
}

class NonEmptyValidator implements validator {
  @override
  bool Isvalid(String validators) {
    return validators.isNotEmpty;
  }
}

class InputValidator {
  final validator FirstnameStringvalidator = NonEmptyValidator();
  final validator LastStringvalidator = NonEmptyValidator();
  final validator GenderStringvalidator = NonEmptyValidator();
  final validator DateOfBirthStringvalidator = NonEmptyValidator();
  final validator PassPortStringvalidator = NonEmptyValidator();
  final validator AddressStringvalidator = NonEmptyValidator();
  final validator CountryStringvalidator = NonEmptyValidator();
  final validator StateStringvalidator = NonEmptyValidator();

  final String LogError = 'cant be empty';
}
