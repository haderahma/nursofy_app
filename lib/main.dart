import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salamatuk_app/provider/prov.dart';
import 'package:salamatuk_app/view/availability.dart';
import 'package:salamatuk_app/view/bookingsnurse.dart';
import 'package:salamatuk_app/view/bookingspatient.dart';
import 'package:salamatuk_app/view/messages.dart';
import 'package:salamatuk_app/view/nurseprofile.dart';
import 'package:salamatuk_app/view/patientProfile.dart';
import 'package:salamatuk_app/view/request.dart';

void main() {
runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Control()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home:  Request(),
    );
  }
}
 

