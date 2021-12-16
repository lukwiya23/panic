// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:panic/screens/Login.dart';
import 'package:panic/screens/Register.dart';

class ResetPage extends StatefulWidget {
  const ResetPage({Key? key}) : super(key: key);

  @override
  _ResetPageState createState() => _ResetPageState();
}

class _ResetPageState extends State<ResetPage> {
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _email,
            decoration: InputDecoration(hintText: "Email"),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, fixedSize: Size(150.0, 60.0))),
          GestureDetector(
            child: Text("Don't have an account? Create Account"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Register()));
            },
          ),
          GestureDetector(
            child: Text("Already have an account? Login"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          )
        ],
      ),
    );
  }
}
