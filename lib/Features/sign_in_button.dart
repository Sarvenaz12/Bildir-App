import 'package:dummy_projects/Features/controller/auth_controler.dart';
import 'package:dummy_projects/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:dummy_projects/firebase_providers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void signInWithGoogle(WidgetRef ref) {
  ref.read(authControllerProvider).signInWithGoogle();
}

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return ElevatedButton.icon(
          onPressed: () => signInWithGoogle(ref),
          icon: Image.asset('lib/assets/google.png', width: 35),
          label: const Text(
            "Google bilan davom etish",
            style: TextStyle(fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFFF2F0EF),
          ),
        );
      },
    );
  }
}
