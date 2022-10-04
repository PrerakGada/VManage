import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'Theme/app_colors.dart';
import 'Theme/dark_theme.dart';
import 'Theme/light_theme.dart';
import 'firebase_options.dart';
import 'routes.dart';
import 'screens/wrapper.dart';
import 'services/get_it_service.dart';
import 'services/navigation_service.dart';
import 'stores/auth.dart';
import 'stores/user_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  GetItService.setupLocator();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: AppColors.black));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserStore>(
          create: (_) => UserStore(),
          lazy: false,
        ),
        ChangeNotifierProvider<AuthStore>(
          create: (_) => AuthStore(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        theme: light_theme(),
        darkTheme: dark_theme(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const Wrapper(),
        navigatorKey: get_it_instance_const<NavigationService>().navigatorKey,
        onGenerateRoute: generateRoute,
        initialRoute: RoutePath.Wrapper,
      ),
    );
  }
}
