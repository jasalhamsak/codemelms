import 'package:codemeapp/MainApp.dart';
import 'package:flutter/material.dart';

import 'codmeapp.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        // home: instagram(),
        home: Mainapp(),
        // home: Images(),
    );
  }
}
