const kPhonePattern =
    r"^1([38][0-9]|4[579]|5[0-3,5-9]|6[6]|7[0135678]|9[89])\d{8}$";
final RegExp kPhoneRegex = RegExp(kPhonePattern);

/// Check if the given phone is valid
bool isPhone(String phone) => kPhoneRegex.hasMatch(phone);
