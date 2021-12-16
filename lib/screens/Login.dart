// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:panic/screens/Register.dart';
import 'package:panic/screens/ResetPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
          TextButton(
              onPressed: () {},
              child: const Text(
                "Login",
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
