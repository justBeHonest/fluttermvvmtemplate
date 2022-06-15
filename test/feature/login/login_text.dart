import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {
    print('here');
  });

  test("User Login Fail Test", () {
    final isUserLogin = true;
    expect(isUserLogin, isTrue);
  });

  group("User Login Ful Test", () {
    //MARK: test1
    test("User Login Fail Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });

    //MARK: test2
    test("User Login Fail Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });

    //MARK: test3
    test("User Login Fail Test", () {
      final isUserLogin = true;
      expect(isUserLogin, isTrue);
    });
  });
}
