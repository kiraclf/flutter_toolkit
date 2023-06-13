import 'package:flutter_test/flutter_test.dart';
import 'package:kira_tool_kit/tools/validator/validator.dart';

void main() {
  group('test carplate validation', () {
    test('return true with correct fuel plate', () {
      expect(isCarPlate('苏em3c58'), true);
    });
    test('return true with correct electric plate', () {
      expect(isCarPlate('苏EDT2003'), true);
    });
    test('return false with just some random plate', () {
      expect(isCarPlate('苏EM3sdfC58'), false);
    });
  });
}
