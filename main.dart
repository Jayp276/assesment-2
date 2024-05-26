import 'package:flutter/material.dart';
import 'package:note_app/checkbox.dart';
import 'package:note_app/micpage.dart';
import 'package:note_app/more_horiz.dart';
import 'package:note_app/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
      ),
      home: more(),
    );
  }
}

