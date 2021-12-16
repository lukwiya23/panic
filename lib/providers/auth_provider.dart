import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthClass {
  FirebaseAuth auth = FirebaseAuth.instance;

//create account
  Future<String> createAccount(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Account Created Successfully";
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return ('The password provided is too weak.');
      } else if (e.code == 'Email-already-in-use') {
        return ('The account already exists for that email.');
      }
    } catch (e) {
      return ("Error, could not create account.");
    }
  }
}
