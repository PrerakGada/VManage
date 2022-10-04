import 'package:flutter/material.dart';
import '../models/user.dart';
import '../widgets/custom_snack_bar.dart';
import '../widgets/http_error_handling.dart';
import 'package:http/http.dart';

class SignUpService {
  void signUp({
    required String name,
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    print('Inside Service');
    try {
      const String url =
          'https://hackoverhackathon.pythonanywhere.com/accounts/register';
      Uri uri = Uri.parse(url);
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
      );
      Response response = await post(
        uri,
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      print("Post request sent");
      HttpErrorHandling.handleHttpError(
        response: response,
        context: context,
        onSuccess: () {
          CustomSnackBar.showSnackBar(
            context: context,
            text: 'Account Created! Please login with the same credentials',
          );
        },
      );
      print('Register Success');
    } catch (error) {
      print('Register Error: $error');
      CustomSnackBar.showSnackBar(
        context: context,
        text: error.toString(),
      );
    }
  }
}
