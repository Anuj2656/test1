
import 'package:flutter/material.dart';


import 'fashiondropdown.dart';
import 'home screen.dart';


void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'test',
      home: MyHome(),
    );
  }
}








