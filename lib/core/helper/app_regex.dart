class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$')
        .hasMatch(password);
  }

  static bool isLowerCase(String password) {
    return RegExp(r'(?=.*[a-z])').hasMatch(password);
  }

  static bool isUpperCase(String password) {
    return RegExp(r'(?=.*[A-Z])').hasMatch(password);
  }

  static bool isNumber(String password) {
    return RegExp(r'(?=.*\d)').hasMatch(password);
  }

  static bool isSpecialCharacter(String password) {
    return RegExp(r'(?=.*[@$!%*?&])').hasMatch(password);
  }

  static bool isMinLength(String password) {
    return RegExp(r'(?=.{8,})').hasMatch(password);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }
}
