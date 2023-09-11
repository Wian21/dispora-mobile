import 'package:dispora_mobile_new/view/beranda.dart';
import 'package:flutter/material.dart';
import 'view/login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Beranda(),
      debugShowCheckedModeBanner: false,
    );
  }
}
