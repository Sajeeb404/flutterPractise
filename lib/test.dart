import 'dart:io';
import 'package:flutter/material.dart';




class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("HTL"),

        // titleSpacing: 0,
        // centerTitle: true,

        // actions: [
        //   IconButton(onPressed: (){print("Home");}, icon: Icon(Icons.home)),
        //   IconButton(onPressed: (){print("Settings");}, icon: Icon(Icons.settings)),
        //
        // ],


      ),

      drawer: Drawer(

        child: ListView(

          // padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Text('Menu'),
            ),

          ],
        ),
      ),







      // body: Container(
      //   height: double.infinity,
      //   width: 200.0,
      //   color: Colors.amber,
      // ),



    );


  }






}








class Practise2 extends StatelessWidget {
  const Practise2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.shade700,
      body: SafeArea(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [


            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child:Image.network("https://kinsta.com/wp-content/uploads/2020/08/tiger-jpg.jpg"),
            ),

            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              child:Image.asset("images/tiger-jpg.jpg"),


            )



          ],
        ),
      ),

    );
  }
}

class Preactise03 extends StatelessWidget {
  const Preactise03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                color: Colors.blueAccent.shade100,
                width: double.infinity,
                height: 100.0,
                child: Center(


                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Image.asset("images/tiger-jpg.jpg",alignment: Alignment.center),

                      Icon(Icons.accessibility_sharp),

                      Text(

                        "01",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                        ),
                      ),
                      Icon(Icons.accessibility_sharp)


                    ],
                  ),

                ),
              ),

              Container(
                color: Colors.blueAccent.shade200,
                height: 100.0,
                child: Center(
                  child: Text(
                    "02",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blueAccent.shade400,
                height: 100.0,
                child: Center(
                  child: Text(
                    "03",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blueAccent.shade700,
                height: 100.0,
                child: Center(
                  child: Text(
                    "04",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),


              Container(
                color: Colors.blueAccent.shade100,
                width: double.infinity,
                height: 100.0,
                child: Center(
                  child: Text(
                    "05",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blueAccent.shade200,
                height: 100.0,
                child: Center(
                  child: Text(
                    "06",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blueAccent.shade400,
                height: 100.0,
                child: Center(
                  child: Text(
                    "07",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blueAccent.shade700,
                height: 100.0,
                child: Center(
                  child: Text(
                    "08",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),


              Container(
                color: Colors.blueAccent.shade100,
                width: double.infinity,
                height: 100.0,
                child: Center(
                  child: Text(
                    "09",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blueAccent.shade200,
                height: 100.0,
                child: Center(
                  child: Text(
                    "10",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),

              Container(
                color: Colors.blueAccent.shade400,
                height: 100.0,
                child: Center(
                  child: Text(
                    "11",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blueAccent.shade700,
                height: 100.0,
                child: Center(
                  child: Text(
                    "12",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}


class RosColumsPractis extends StatelessWidget {
  const RosColumsPractis({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(

              children: [

                Row(
                  children: [
                    Container(
                      color: Colors.blueAccent.shade700,
                      height: 100,
                      width: 100,
                    ),


                    Container(
                      color: Colors.blueAccent.shade400,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.blueAccent.shade700,
                      height: 100,
                      width: 100,
                    ),

                    Container(
                      color: Colors.blueAccent.shade700,
                      height: 100,
                      width: 100,
                    ),
                    Container(
                      color: Colors.blueAccent.shade400,
                      height: 100,
                      width: 100,
                    ),

                    Container(
                      color: Colors.blueAccent.shade700,
                      height: 100,
                      width: 100,
                    ),


                  ],



                ),


                Column(

                  children: [
                    Container(
                      color: Colors.black,
                      height: 100,
                      width: 600,

                    ),

                    Container(
                      color: Colors.blueAccent.shade100,
                      height: 100,
                      width: 600,
                    ),
                    Container(
                      color: Colors.blueAccent.shade200,
                      height: 100,
                      width: 500,
                    ),
                    Container(
                      color: Colors.blueAccent.shade400,
                      height: 100,
                      width: 500,
                    ),
                    Container(
                      color: Colors.blueAccent.shade100,
                      height: 100,
                      width: 500,
                    ),
                    Container(
                      color: Colors.blueAccent.shade700,
                      height: 100,
                      width: 500,
                    ),
                    Container(
                      color: Colors.blueAccent.shade200,
                      height: 100,
                      width: 500,
                    ),

                    Container(
                      color: Colors.blueAccent.shade100,
                      height: 100,
                      width: 500,
                    ),

                  ],
                )







              ],


            ),
          ),
        ),
      ),
    );
  }
}

class Practise50 extends StatelessWidget {
  const Practise50({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(


        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),


              ],

            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),
                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade700,
                ),

                Container(
                  width: 100,
                  height: 200,
                  color: Colors.blue.shade100,
                ),


              ],

            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(

              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade100,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade700,
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade100,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade700,
                ),

                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade100,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.yellow.shade700,
                ),


              ],

            ),
          )

        ],

      ),
    );
  }
}


class pracitse extends StatelessWidget {
  const pracitse({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(



                children: [
                  Image.asset("images/tiger-jpg.jpg", height: 100,),

                  Container(
                    child: Icon(Icons.accessibility_sharp),
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade100,
                  ),
                  Container(
                    child: Image.asset("images/tiger-jpg.jpg"),
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                ],

              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade100,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                ],

              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),

                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade700,
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.blue.shade400,
                  ),
                ],

              ),
            )


          ],
        ),
      ),
    );
  }
}




class Practise02 extends StatelessWidget {
  const Practise02({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Center(
          child: Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              "hewf",
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height/10,
              ),
            ),
          ),
        ),
      ),

    );
  }
}



class ListtilesPric extends StatelessWidget {
  const ListtilesPric({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Sajeeb"),
            subtitle: Text("Home"),
            leading: Icon(Icons.accessibility_sharp),
            trailing: Icon(Icons.ac_unit),
          ),

        ],
      ),
    ));
  }
}


class LiqudSwipPractise extends StatelessWidget {
  const LiqudSwipPractise({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width/5,
          height: MediaQuery.of(context).size.height/5,
          color: Colors.blue,
          child: Center(
            child: Text(
              "Hello",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ),
      ),
    ));
  }
}










class MakeFlag extends StatelessWidget {
  const MakeFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

    ),);
  }
}


class RoutingPractise extends StatefulWidget {
  const RoutingPractise({super.key});

  @override
  State<RoutingPractise> createState() => _RoutingPractiseState();
}

class _RoutingPractiseState extends State<RoutingPractise> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


















