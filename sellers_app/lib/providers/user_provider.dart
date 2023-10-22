import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user.dart';
import '../api/firebase_api.dart';
import '../utils/show_http_error_snack_bar.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  bool get isAuth {
    return token != null;
    // return true;
  }

  int? get userId {
    return _user!.userId;
  }

  String? get name {
    return _user!.name;
  }

  String? get username {
    return _user!.username;
  }

  String? get phoneNumber {
    return _user!.phoneNumber;
  }

  String? get imageUrl {
    return _user!.imageUrl;
  }

  String? get token {
    if (_user != null) {
      return _user!.token;
    }
    return null;
  }

  void updateUsername(String newUsername) {
    _user!.username = newUsername;
    notifyListeners();
  }

  void updateImageUrl(String newImageUrl) {
    _user!.imageUrl = newImageUrl;
    notifyListeners();
  }

  void createUser({
    required String token,
    required String username,
    required int userId,
    required String name,
    required String phoneNumber,
    required String? imageUrl,
  }) async {
    _user = User(
      token: token,
      userId: userId,
      username: username,
      name: name,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
    );
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    final userData = json.encode({
      'token': _user!.token,
      'userId': _user!.userId,
      'name': _user!.name,
      'username': _user!.username,
      'phoneNumber': _user!.phoneNumber,
      'imageUrl': _user!.imageUrl,
    });
    prefs.setString('userData', userData);
  }

  Future<void> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey('userData')) {
      return;
    }
    final extractedUserData =
        json.decode(prefs.getString('userData')!) as Map<String, dynamic>;

    final token = extractedUserData['token'] as String;
    final userId = extractedUserData['userId'] as int;
    final name = extractedUserData['name'] as String;
    final phoneNumber = extractedUserData['phoneNumber'] as String;
    final username = extractedUserData['username'] as String;
    final imageUrl = extractedUserData['imageUrl'] as String?;

    _user = User(
      token: token,
      userId: userId,
      username: username,
      name: name,
      phoneNumber: phoneNumber,
      imageUrl: imageUrl,
    );

    // FirebaseAPI().initPushAndLocalNotifications();

    notifyListeners();
  }

  Future<void> logout(BuildContext context) async {
    try {
      await FirebaseAPI()
          .unsubscribe(userId!)
          .timeout(const Duration(seconds: 15));
    } catch (err) {
      if (!context.mounted) return;
      showHttpErrorSnackBar(ctx: context, err: err, showServerError: false);
      return;
    }

    _user = null;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
