import 'package:flutter/material.dart';
import 'package:soft_eng/components/features/letsgetbutton.dart';
import 'package:soft_eng/components/features/sign_field.dart';
import 'package:soft_eng/components/signup.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.asset('assets/logo.png'),
                ),
              ),
              const SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: MySignField(
                  controller: usernameController,
                  hintText: "Enter your email",
                  obsecureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MySignField(
                  controller: passwordController,
                  hintText: "Enter your password",
                  obsecureText: true,
                ),
              ),
              const SizedBox(height: 25),
              const MyButton(),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have an Account?",
                      style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.of((context)).push(
                          MaterialPageRoute(
                            builder: ((context) => MySignUp()),
                          ),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
