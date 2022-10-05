import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import '../widgets/custom_snack_bar.dart';
import '../widgets/http_error_handling.dart';
import 'package:http/http.dart';

class AddEventService {
  void addEvent({
    required BuildContext context,
    required String title,
    required String details,
    required String event_held_date,
    required String event_held_time,
    required String views,
    required File event_image,
  }) async {
    try {
      print("Inside on service");
      const String url =
          'https://hackoverhackathon.pythonanywhere.com/accounts/create-event';
      Uri uri = Uri.parse(url);
      Response response = await post(
        uri,
        body: json.encode({
          'title': title,
          'details': details,
          'event_held_date': event_held_date,
          'event_held_time': event_held_time,
          'views': views,
          'event_image': event_image,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Token 8f82e57ad071b83f914402e14ba89a282f218198'
        },
      );
      print("Post Success");
      HttpErrorHandling.handleHttpError(
        response: response,
        context: context,
        onSuccess: () {
          print("Success Final");
          CustomSnackBar.showSnackBar(
            context: context,
            text: 'Event Sucessfull',
          );
        },
      );
    } catch (error) {
      print("Catch Error");
      CustomSnackBar.showSnackBar(
        context: context,
        text: error.toString(),
      );
    }
  }
}
