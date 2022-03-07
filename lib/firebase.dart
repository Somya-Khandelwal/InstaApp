import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:first_app/main.dart';
import 'package:first_app/Profile.dart';
import 'package:flutter/material.dart';


Future<void> userSetup(String Fullname, String Username ) async {
  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  FirebaseAuth auth = FirebaseAuth.instance;
  String uid = auth.currentUser!.uid.toString();
  users.doc(email).set({'Fullname': Fullname,'Username': Username, 'uid': uid});
  return;
}
