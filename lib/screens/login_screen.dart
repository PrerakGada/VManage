import 'package:eos_hackover3/Theme/app_colors.dart';
import 'package:eos_hackover3/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../services/log_in_service.dart';
import '../services/get_it_service.dart';
import '../services/navigation_service.dart';
import '../widgets/LabeledTextFormField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LogInService _logInService = LogInService();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void logInUser() {
    _logInService.logIn(
      email: _emailController.text,
      password: _passwordController.text,
      context: context,
    );
  }

  final NavigationService _navigationService =
      get_it_instance_const<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                SizedBox(height: 24),
                Container(
                  height: 300,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.grey,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LabeledTextFormField(
                          controller: _emailController,
                          title: 'Email',
                          hintTitle: 'Enter your email'),
                      SizedBox(height: 16),
                      LabeledTextFormField(
                          controller: _passwordController,
                          title: 'Password',
                          hintTitle: 'Enter your password'),
                      SizedBox(height: 24),
                      MaterialButton(
                        color: AppColors.primaryAccent,
                        minWidth: 200,
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(16),
                          ),
                        ),
                        onPressed: () async {
                          try {
/*                             final user = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            if (user != null) {
                              _navigationService
                                  .popAllAndNavigateTo(RoutePath.Dashboard);
                            } */
                            logInUser();
                            _navigationService
                                .popAllAndNavigateTo(RoutePath.Dashboard);
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 18,
                              color: AppColors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
