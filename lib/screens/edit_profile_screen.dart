import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';
import '../widgets/LabeledTextFormField.dart';

class EditProfileScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  final NavigationService _navigationService =
      get_it_instance_const<NavigationService>();

  EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            _navigationService.goBack(data: {});
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.amberAccent,
                radius: 34,
              ),
              LabeledTextFormField(
                controller: _nameController,
                title: 'Name',
                hintTitle: 'Enter your name',
              ),
              MaterialButton(
                onPressed: () {
                  print(_nameController.text);
                },
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
