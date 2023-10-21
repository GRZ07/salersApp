import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import '../../../../../api/firebase_api.dart';
import '../../../../../models/http_exception.dart';
import '../../../../../providers/user_provider.dart';
import '../../../../../utils/show_http_error_snack_bar.dart';

class SignUpProvider with ChangeNotifier {
  var isLoading = false;

  var formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp({
    required BuildContext context,
  }) async {
    formKey.currentState!.validate();

    formKey.currentState!.save();

    isLoading = true;
    notifyListeners();
    final url = Uri.parse('${dotenv.env['URL']}/api/login');
    try {
      final Map<String, String> request = {
        'username': usernameController.text,
        'password': passwordController.text,
        'fCMToken': 'test',
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

      if (response.statusCode == 401) {
        throw HttpException(responseData['username'] != null
            ? responseData['username'][0]
            : responseData['password'][0]);
      } else if (response.statusCode != 200) {
        throw HttpException('حدث خطأ ما في النظام');
      }

      final token = responseData['token'];
      final userId = responseData['id'];
      final name = responseData['name'];
      final receivedUsername = responseData['username'];
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
        imageUrl: imageUrl,
      );

      await FirebaseAPI().initNotifications(userId!);

      isLoading = false;
      notifyListeners();
    } catch (err) {
      // print(err);
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
