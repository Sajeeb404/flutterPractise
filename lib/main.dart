import 'package:flutter/material.dart';
import 'package:flutter_projects/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.brown),
      darkTheme: ThemeData(primarySwatch: Colors.brown),
      // darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      home: ListtilesPric(),

    );

    
  }
}