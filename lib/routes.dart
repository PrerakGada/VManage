
import 'package:eos_hackover3/screens/dashboard.dart';
import 'package:eos_hackover3/screens/edit_profile_screen.dart';
import 'package:eos_hackover3/screens/explore_screen.dart';
import 'package:eos_hackover3/screens/newEvent_screen.dart';
import 'package:eos_hackover3/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/wrapper.dart';


class RoutePath {
  static const String Wrapper = '/wrapper';
  static const String Splash = '/splash';
  static const String Login = '/login';
  static const String Dashboard = '/dashboard';

  static const String Home = '/home';
  static const String Explore = '/explore';
  static const String NewEvent = '/new-event';
  static const String Profile = '/profile';

  static const String EditProfile = '/edit-profile';

  static const String Search = '/Search';
  static const String AddPost = '/AddPost';
  static const String Notifications = '/Notifications';


  static const String ViewProfile = '/ViewProfile';
  static const String Location = '/Location';
  static const String Privacy = '/Privacy';
  static const String SubscribedFullScreen = '/SubscribedFullScreen';
  static const String Loading = '/Loading';

}


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePath.Wrapper:
      return MaterialPageRoute(builder: (_) => const Wrapper());

    // case RoutePath.Splash:
    //   return MaterialPageRoute(builder: (_) => const SplashScreen());

    case RoutePath.Login:
      return MaterialPageRoute(builder: (_) => const LoginScreen());

    case RoutePath.Dashboard:
      return MaterialPageRoute(builder: (_) =>  Dashboard());

    case RoutePath.Explore:
      return MaterialPageRoute(builder: (_) => const ExploreScreen());

    case RoutePath.NewEvent:
      return MaterialPageRoute(builder: (_) => const NewEventScreen());

    case RoutePath.Profile:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());

    case RoutePath.EditProfile:
      return MaterialPageRoute(builder: (_) => EditProfileScreen());


    // case RoutePath.Otp:
    //   Map<String, String> arguments = settings.arguments;
    //   return MaterialPageRoute(
    //     builder: (_) => OtpScreen(
    //       email: arguments['email'],
    //       password: arguments['password'],
    //       name: arguments['name'],
    //     ),
    //   );

    default:
      return MaterialPageRoute(builder: (_) => const Wrapper());
  }
}
