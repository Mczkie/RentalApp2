import 'package:flutter/material.dart';
import 'package:soft_eng/components/features/sign_field.dart';
import 'package:soft_eng/components/landpage.dart';

class MySignUp extends StatelessWidget {
  MySignUp({Key? key}) : super(key: key);

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
              const SizedBox(height: 10),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 500,
                  padding: const EdgeInsets.all(25),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of((context)).push(
                        MaterialPageRoute(builder: (context) => LandingPage()),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Have an Account?',
                        style: TextStyle(color: Colors.white70),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Schyler'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
