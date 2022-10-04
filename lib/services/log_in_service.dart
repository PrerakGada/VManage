import 'dart:convert';

import 'package:flutter/material.dart';
import '../widgets/custom_snack_bar.dart';
import '../widgets/http_error_handling.dart';
import 'package:http/http.dart';

class LogInService {
  void logIn({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      const String url =
          'https://hackoverhackathon.pythonanywhere.com/accounts/login';
      Uri uri = Uri.parse(url);
      Response response = await post(
        uri,
        body: json.encode({
          'email': email,
          'password': password,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      HttpErrorHandling.handleHttpError(
        response: response,
        context: context,
        onSuccess: () {
          CustomSnackBar.showSnackBar(
            context: context,
            text: 'Login Sucessfull',
          );
        },
      );
    } catch (error) {
      CustomSnackBar.showSnackBar(
        context: context,
        text: error.toString(),
      );
    }
  }
}
