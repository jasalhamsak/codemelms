
import 'package:codemeapp/Presentation/LandingPage/1codmeapp.dart';
import 'package:flutter/material.dart';



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
        home: codeme(),
        // home: Images(),
    );
  }
}
