const kEmailPattern = r"^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";
final RegExp kEmailRegex =
    RegExp(kEmailPattern, caseSensitive: false);

/// Checks if the given [email] is valid.
bool isEmail(String email) => kEmailRegex.hasMatch(email);
