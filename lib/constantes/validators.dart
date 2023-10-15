extension PhoneValidator on String {
  bool isValidPhone() {
    return RegExp(r'^(0?|(00|\+)?(213|216))[56789]\d{8}$').hasMatch(this);
  }

  String transformAndValidatePhone() {
    if (isValidPhone()) {
      if (startsWith('+213')) {
        return replaceFirst('+213', '0');
      } else if (startsWith('+216')) {
        return replaceFirst('+216', '0');
      } else if (startsWith('213')) {
        return replaceFirst('213', '0');
      } else if (startsWith('216')) {
        return replaceFirst('216', '0');
      } else {
        return this;
      }
    } else {
      return this;
    }
  }

  bool isPhone(String input) =>
      RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$')
          .hasMatch(input);
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isWhiteSpace() => trim().isEmpty;

  bool isValidDouble() => double.tryParse(this) != null;

  bool isValidInt() => int.tryParse(this) != null;
}
