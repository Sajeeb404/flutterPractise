import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/page1.dart';
import 'package:flutter_projects/pages/page2.dart';
import 'package:flutter_projects/pages/page3.dart';
import 'package:flutter_projects/pages/page4.dart';
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
      home: RoutinP(),
    );


  }
}




class RoutinP extends StatefulWidget {
  const RoutinP({super.key});

  @override
  State<RoutinP> createState() => _RoutinPState();
}

class _RoutinPState extends State<RoutinP> {

  var _countIndex = 0;

  final pages = [
    PractisRow(),
    Practise01(),
    PractiseGird(),
    Page3(),
    Preactise03()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.black,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.red,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.yellow))),

        child: BottomNavigationBar(
          currentIndex: _countIndex,


          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.blueAccent,
              label: "Pratise Row",
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(

              backgroundColor: Colors.yellow,

              label: "Data Data",
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
backgroundColor: Colors.green,

              label: "Out linde Buttons",
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
backgroundColor: Colors.cyanAccent,

              label: "Two Colors",
              icon: Icon(Icons.message),
            ),
            BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,

              label: "Two Colors",
              icon: Icon(Icons.message),
            ),




          ],
          onTap: (index){
            setState(() {
              _countIndex = index;
            });
          },
        ),
      ),
      body: pages[_countIndex],
    );
  }
}






