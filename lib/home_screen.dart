import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super (key: key);

  Widget build(BuildContext context, WidgetRef ref ) {
    //final user = ref.watch(userProvider)!;

    return Scaffold(

      appBar: AppBar(
        title: const Text("Home"),
      ),
    );
  }
}