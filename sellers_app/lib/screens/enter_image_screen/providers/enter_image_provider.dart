import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/http_exception.dart';
import '../../../providers/user_provider.dart';
import '../../../utils/show_http_error_snack_bar.dart';

class EnterImageProvider with ChangeNotifier {
  final BuildContext context; // Only for the user provider

  EnterImageProvider(this.context);

  String? imagePath;

  var isUpdating = false;

  void Function(String)? pickImage;

  void setImagePath(String path) {
    imagePath = path;
  }

  void updateImagePath(String path) {
    imagePath = path;
    notifyListeners();
  }

  Future<bool?> updateImage({
    required BuildContext ctx, // Only for the snackbar
    required String imagePath,
    required String token,
  }) async {
    isUpdating = true;
    notifyListeners();

    final url = '${dotenv.env['URL']}/api/uploadImage';
    final dio = Dio();
    FormData request = FormData.fromMap({
      'image': await MultipartFile.fromFile(
        imagePath,
        filename: imagePath.split('/').last,
      ),
    });
    dio.options.headers['Authorization'] = token;
    try {
      final response = await dio
          .post(
            url,
            data: request,
          )
          .timeout(
            const Duration(seconds: 15),
          );

      final responseData = response.data;

      if (response.statusCode == 401) {
        throw HttpException(responseData['message']);
      } else if (response.statusCode != 200) {
        throw HttpException('حدث خطأ ما في النظام');
      }

      final newImageUrl = '${dotenv.env['URL']}$responseData';

      final prefs = await SharedPreferences.getInstance();
      final Map<String, dynamic> userData =
          json.decode(prefs.getString('userData')!);
      userData['imageUrl'] = newImageUrl;
      prefs.setString('userData', json.encode(userData));

      if (!context.mounted) return null;
      Provider.of<UserProvider>(context, listen: false)
          .updateImageUrl(newImageUrl);

      isUpdating = false;
      notifyListeners();
      return true;
    } catch (err) {
      // print(err);
      isUpdating = false;
      notifyListeners();
      if (!ctx.mounted) return null;
      showHttpErrorSnackBar(ctx: ctx, err: err, showServerError: false);
      return null;
    }
  }
}
