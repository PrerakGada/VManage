import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key, required this.imageUrl, required this.title, required this.description, required this.date, required this.price}) : super(key: key);

  final String imageUrl;
  final String title;
  final String description;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Event Details')),
    );
  }
}
