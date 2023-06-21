import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/page1.dart';
import 'package:flutter_projects/pages/page2.dart';
import 'package:flutter_projects/pages/page3.dart';
import 'package:flutter_projects/pages/page4.dart';
import 'package:flutter_projects/test.dart';

import 'form/edit_update.dart';
import 'form/login_forms.dart';
import 'form/signup_forms.dart';
import 'form/user_list.dart';

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
      // home: TabbarRoutingTest(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginForm(),
        '/pagesignup': (context) => SignUpForm(),
        '/userlists': (context) => UserList(),
        '/editUpd': (context) => EditData(),

        '/page03': (context) => PractiseGird(),
        '/page04': (context) => Page3(),
        '/page05': (context) => Preactise03(),
      },
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
            textTheme: Theme.of(context)
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
          onTap: (index) {
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

class NavigationRoutingPract extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("app bar Routing Test"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/",
                    (route) => false,
                  );
                },
                icon: Icon(Icons.account_balance)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/page02",
                    (route) => false,
                  );
                },
                icon: Icon(Icons.account_balance)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/page03",
                    (route) => false,
                  );
                },
                icon: Icon(Icons.account_balance)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    "/page04",
                    (route) => false,
                  );
                },
                icon: Icon(Icons.account_balance)),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Tab 1",
                icon: Icon(Icons.ac_unit),
              ),
              Tab(
                text: "Tab 2",
                icon: Icon(Icons.accessibility_new),
              ),
              Tab(
                text: "Tab 3",
                icon: Icon(Icons.accessible_forward),
              ),
              Tab(
                text: "Tab 4",
                icon: Icon(Icons.account_balance),
              ),
              Tab(
                text: "Tab 5",
                icon: Icon(Icons.ad_units_sharp),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PractisRow(),
            Practise01(),
            PractiseGird(),
            Page3(),
            Preactise03()
          ],
        ),
      ),
    );
  }
}
