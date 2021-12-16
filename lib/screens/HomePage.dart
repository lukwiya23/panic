// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String username = FirebaseAuth.instance.currentUser.displayName;
  String photo = FirebaseAuth.instance.currentUser.photoURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Panic'), actions: [
        IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
      ]),
      body: Center(
        child: Text("Username $username"),
      ),
    );
  }
}
