// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:panic/screens/Login.dart';
import 'package:panic/screens/ResetPage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
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
          TextFormField(
            controller: _password,
            decoration: InputDecoration(hintText: "Password"),
          ),
          TextFormField(
            controller: _password,
            decoration: InputDecoration(hintText: "Confirm Password"),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Create Account",
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red, fixedSize: Size(150.0, 60.0))),
          GestureDetector(
            child: Text("Already have an account? Login"),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          GestureDetector(
            child: Text("Forgot Password? Reset It"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPage()));
            },
          )
        ],
      ),
    );
  }
}
