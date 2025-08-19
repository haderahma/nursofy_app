import 'package:flutter/material.dart';
import 'package:salamatuk_app/view/availability.dart';
import 'package:salamatuk_app/view/nurseprofile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:  NurseProfileScreen(),
    );
  }
}
 

