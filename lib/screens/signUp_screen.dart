import 'package:eos_hackover3/routes.dart';
import 'package:eos_hackover3/widgets/LabeledTextFormField.dart';
import 'package:flutter/material.dart';

import '../Theme/app_colors.dart';
import '../services/get_it_service.dart';
import '../services/navigation_service.dart';
import '../services/sign_up_service.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final SignUpService _signUpService = SignUpService();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser() {
    _signUpService.signUp(
      name: _nameController.text,
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
                Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 24),
                Container(
                  height: 400,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LabeledTextFormField(
                          controller: _nameController,
                          title: 'Name',
                          hintTitle: 'Enter your name'),
                      SizedBox(height: 16),
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
                            Radius.circular(8),
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
                            print('outside func call');
                            signUpUser();
                            print('func call done');
                            _navigationService
                                .popAllAndNavigateTo(RoutePath.Login);
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text(
                          'Sign Up',
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
