import 'package:dummy_projects/Features/screenss/sign_in_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/logo.png',
              height: 100,
              width: 1000,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "So'ra. Javob ber",
              style: TextStyle(
                fontFamily: "lib/assets/SpecialGothic-Regular.ttf",
                fontStyle: FontStyle.italic,
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SignInButton(),],
        ),
        toolbarHeight: 700,
      ),
    );
  }
}
