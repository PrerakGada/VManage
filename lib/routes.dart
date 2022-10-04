
import 'package:flutter/material.dart';

import 'screens/wrapper.dart';


class RoutePath {
  static const String Wrapper = '/wrapper';
  static const String Splash = '/splash';
  static const String Login = '/login';
  static const String Home = '/home';

  static const String News = '/News';
  static const String Search = '/Search';
  static const String AddPost = '/AddPost';
  static const String Notifications = '/Notifications';
  static const String Profile = '/Profile';

  static const String EditProfile = '/EditProfile';
  static const String Settings = '/Settings';
  static const String Verification = '/Verification';
  static const String TermsCondition = '/TermsCondition';


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
