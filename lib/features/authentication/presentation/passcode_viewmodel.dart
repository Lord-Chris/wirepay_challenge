import 'package:flutter/material.dart';

import '../../../core/router/_router.dart';

class PasscodeViewModel extends ChangeNotifier {
  String _passcode = '';
  String get passcode => _passcode;

  void onDigitPress(String digit) {
    if (_passcode.length >= 6) return;
    _passcode += digit;
    notifyListeners();
  }

  void onDeletePress() {
    if (_passcode.isEmpty) return;
    _passcode = _passcode.substring(0, _passcode.length - 1);
    notifyListeners();
  }

  void goToHomeView() {
    AppNavigator.pushNamed(Routes.homeView);
  }
}
