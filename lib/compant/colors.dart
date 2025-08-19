import 'package:flutter/material.dart';

const kPrimary = Color.fromARGB(255, 35, 133, 212); 
const kOnPrimary = Colors.white;
const kTextTeal =  Color.fromARGB(255, 125, 158, 185); 
const kSurface = Colors.grey;
const kMuted = Color.fromARGB(255, 225, 235, 245);
TextStyle get h1 => const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: kTextTeal);
TextStyle get h2 => const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: kOnPrimary);
TextStyle get h3 => const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: kSurface);
TextStyle get h4 => const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87);
TextStyle get h5 => const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87);
TextStyle get h6 => const TextStyle(fontSize: 18, color: Colors.black87);
TextStyle get h8 => const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87);
TextStyle get h7 => const TextStyle(fontSize: 16, color: kMuted );
TextStyle get h9 => const TextStyle(fontSize: 16, color: kTextTeal);
 