
import 'package:eos_hackover3/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  WrapperState createState() => WrapperState();
}

class WrapperState extends State<Wrapper> {
  final NavigationService _navigationService =
  get_it_instance_const<NavigationService>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await handleNavigation();
    });
  }

  handleNavigation() async {
    final currUser = FirebaseAuth.instance.currentUser;
    if (currUser != null) {
      _navigationService.popAllAndNavigateTo(RoutePath.Dashboard);
    } else{
      _navigationService.popAllAndNavigateTo(RoutePath.Dashboard);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('Building Wrapper Widget......');
    }
    // return Dashboard();
    return const SafeArea(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
