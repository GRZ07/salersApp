import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  String display = 'login';

  void switchScreen(String screen) {
    display = screen;
    notifyListeners();
  }
}
