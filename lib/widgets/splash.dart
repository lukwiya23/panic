import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';
import 'package:panic/screens/HomePage.dart';
import 'package:panic/screens/Register.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 100), () {
      if (auth.currentUser == null) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Register()),
            (route) => false);
      }
      else{
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false);
            
      }
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: avoid_unnecessary_containers, sized_box_for_whitespace
            Container(
              child: Image.asset(
                "assets/images/logo.jpg",
              ),
              height: 300,
              width: 200,
            ),
            const SizedBox(
              height: 15.0,
            ),
            LoadingBouncingGrid.circle(
              backgroundColor: Colors.red,
              borderColor: Colors.white,
              size: 25,
            )
          ],
        ),
      ),
    );
  }
}
