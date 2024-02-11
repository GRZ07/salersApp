import 'dart:convert';

import 'package:http/http.dart' as http;

Future sendGet({
  required Uri url,
  required http.Client client,
  required String? token,
}) async {
  final headers = token != null
      ? {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token',
        }
      : {
          'Content-Type': 'application/json',
        };
  try {
    final response = await client
        .get(
          url,
          headers: headers,
        )
        .timeout(
          const Duration(seconds: 15),
        );

    return json.decode(response.body);
  } catch (err) {
    // print(err);
    rethrow;
  }
}
