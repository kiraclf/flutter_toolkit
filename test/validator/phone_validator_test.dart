import 'package:flutter_test/flutter_test.dart';
import 'package:kira_tool_kit/tools/validator/validator.dart';

void main() {
  group('Test phone validator', () {
    test('Given empty phone number', () {
      const phone = '';
      expect(isPhone(phone), false);
    });
    test('Given right phone number', () {
      const phone = '15951804594';
      expect(isPhone(phone), true);
    });
    test('Given wrong phone number', () {
      const phone = '123123123123123123';
      expect(isPhone(phone), false);
    });
  });
}
