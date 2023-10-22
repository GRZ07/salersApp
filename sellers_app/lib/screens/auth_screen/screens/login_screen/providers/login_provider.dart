import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../../../../api/firebase_api.dart';
import '../../../../../models/http_exception.dart';
import '../../../../../providers/user_provider.dart';
import '../../../../../utils/show_http_error_snack_bar.dart';

class LoginProvider with ChangeNotifier {
  var isLoading = false;

  var formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login({
    required BuildContext context,
  }) async {
    if (!formKey.currentState!.validate()) return;

    formKey.currentState!.save();

    isLoading = true;
    notifyListeners();
    final url = Uri.parse('${dotenv.env['URL']}/api/login');
    try {
      final Map<String, String> request = {
        'username': usernameController.text,
        'password': passwordController.text,
      };
      final headers = {
        'Content-Type': 'application/json',
      };

      final response = await http
          .post(
            url,
            headers: headers,
            body: json.encode(request),
          )
          .timeout(
            const Duration(seconds: 15),
          );
      final responseData = json.decode(response.body);

      if (response.statusCode == 400) {
        throw HttpException(responseData['message']);
      } else if (response.statusCode != 200) {
        throw HttpException('حدث خطأ ما في النظام');
      }

      final token = responseData['token'];
      final userId = responseData['id'];
      final name = responseData['full_name'];
      final receivedUsername = responseData['username'];
      final phoneNumber = responseData['phone_number'];
      final imageUrl =
          responseData['image'] != null && responseData['image'].isNotEmpty
              ? '${dotenv.env['URL']}${responseData["image"]}'
              : null;

      if (!context.mounted) return;
      Provider.of<UserProvider>(context, listen: false).createUser(
        token: token,
        userId: userId,
        username: receivedUsername,
        name: name,
        phoneNumber: phoneNumber,
        imageUrl: imageUrl,
      );

      await FirebaseAPI().initNotifications(userId!);

      isLoading = false;
      notifyListeners();
    } catch (err) {
      print(err);
      isLoading = false;
      notifyListeners();

      if (!context.mounted) return;
      showHttpErrorSnackBar(ctx: context, err: err, showServerError: true);
    }
  }

  @override
  void dispose() {
    super.dispose();

    usernameController.dispose();
    passwordController.dispose();
  }
}
