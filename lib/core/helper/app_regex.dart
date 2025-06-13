bool isEmailValid(String email) {
  return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
      .hasMatch(email);
}

bool isPasswordValid(String password) {
  return RegExp(
          r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
      .hasMatch(password);
}

bool hasLowerCase(String password) {
  return RegExp(r'^(?=.*[a-z])').hasMatch(password);
}

bool isPhoneNumberValid(String phoneNumber) {
  return RegExp(r'^(?:\+966|00966|0)?5\d{8}$').hasMatch(phoneNumber);
}

bool hasUpperCase(String password) {
  return RegExp(r'^(?=.*[A-Z])').hasMatch(password);
}

bool hasNumber(String password) {
  return RegExp(r'^(?=.*?[0-9])').hasMatch(password);
}

bool hasSpecialCharacter(String password) {
  return RegExp(r'^(?=.*?[#?!@$%^&*-])').hasMatch(password);
}

bool hasMinLength(String password) {
  return RegExp(r'^(?=.{8,})').hasMatch(password);
}