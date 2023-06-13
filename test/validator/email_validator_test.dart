import 'package:flutter_test/flutter_test.dart';
import 'package:kira_tool_kit/tools/validator/validator.dart';

void main() {
  group('test email address validation', () {
    test('given right address', () {
      expect(isEmail('kiraclf@outlook.com'), true);
    });
    test('given wrong address', () {
      expect(isEmail('some_outlook.com'), false);
    });
    test('given empty address', () {
      expect(isEmail(''), false);
    });
  });
}
