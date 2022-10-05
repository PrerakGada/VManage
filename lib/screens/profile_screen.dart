import 'package:eos_hackover3/Theme/app_colors.dart';
import 'package:eos_hackover3/routes.dart';
import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NavigationService _navigationService =
    get_it_instance_const<NavigationService>();
    return Scaffold(
      appBar: AppBar(
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi Prerak!',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          _navigationService.navigateTo(RoutePath.EditProfile);
                        },
                        child: Text(
                          'Edit Profile  >',
                          style: TextStyle(
                              fontSize: 12, color: AppColors.greyLight),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(backgroundColor: AppColors.black, radius: 24),
                ],
              ),
            ),
          ),

      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
