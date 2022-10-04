import 'package:eos_hackover3/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/get_it_service.dart';
import '../services/navigation_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                Text('Login'),
                Container(
                  height: 300,
                  width: 300,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(),
                        ),
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(),
                        ),
                        child: TextFormField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      MaterialButton(
                        color: Colors.amberAccent,
                        minWidth: 100,
                        padding: EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                        ),
                        onPressed: () async {
                          try {
                            final user = await FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            if (user != null) {
                              _navigationService
                                  .popAllAndNavigateTo(RoutePath.Dashboard);
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Text('Login',style: TextStyle(fontSize: 18),),
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
