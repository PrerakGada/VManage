import 'package:eos_hackover3/Theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class EditProfileScreen extends StatelessWidget {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',style: TextStyle(color: AppColors.greyLight),),
                  SizedBox(height: 4),
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter your name',
                      hintStyle: Theme.of(context).textTheme.bodySmall,
                      border: InputBorder.none,
                    )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
