// ignore_for_file: use_key_in_widget_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('flavor demo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: const Text("firebase signin anonymously"),
              onPressed: () async {
                try {
                  await auth.signInAnonymously();
                } catch (err) {
                  print("DEBUG: error message $err");
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
