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




class PractisRow extends StatelessWidget {
  const PractisRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: [
          Container(




            color: Colors.yellow,
            height: 200.0,




          ),
          Container(
            color: Colors.yellow,
            height: 200.0,
          ),          Container(
            color: Colors.blue,
            width: double.infinity,
            height: 200.0,

          ),
          Container(
            color: Colors.blueAccent,
            height: 200.0,
            width: double.infinity,


            child: Text(
              'Hello',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),

              // Icon(Icons.accessibility),
              // Text("Hello")





          ),


          Container(

            color: Colors.blue,
            height: 200.0,
          ),
          Container(
            color: Colors.red,
            height: 200.0,


          ),
        ],
      ),

      ),
    );
  }
}


class Practice11 extends StatelessWidget {
  const Practice11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("hello",
          style: TextStyle(
            fontSize: 80,
            color: Colors.red
          ),),

        ),

        body: Row(
          children: [

            Container(
              color: Colors.blue,
              height: double.infinity,
              width: 100.0,
              child: Icon(
                Icons.accessibility_sharp,
                size: 50,
              ),
            ),
            Container(
              color: Colors.red,
              width: 100.0,
              height: double.infinity,
            ),

          ],


        ),
      ),
    );
  }
}

class Practise01 extends StatelessWidget {
  const Practise01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(

          child: Container(


            child: Column(
              children: [
                //  Text("data"),
                // Icon(Icons.accessibility_sharp,),
                // Text("data"),

                Container(
                  color: Colors.cyanAccent,
                  width: double.infinity,
                  height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("data"),
                Icon(Icons.accessibility_sharp,),
                Text("data"),
              ],
            ),


                ),

                Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                )
                ,

                Container(
                  color: Colors.cyanAccent,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                ),
                Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                ),
                Container(
                  color: Colors.cyanAccent,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                ),
                Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),




                ),

                Container(
                  color: Colors.cyanAccent,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                ),

                Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text("data"),
                      Icon(Icons.accessibility_sharp,),
                      Text("data"),
                    ],
                  ),


                ),


              ],
              // crossAxisAlignment: CrossAxisAlignment.end,


            ),


          ),
        ),
      ),
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



class PracticeN3 extends StatelessWidget {
  const PracticeN3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.lightGreenAccent,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.green,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.white,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.deepPurple,
                        height: double.infinity,
                        width: 100,
                      ),
                      Container(
                        color: Colors.grey,
                        height: double.infinity,
                        width: 100,
                      ),
                    ],
                  ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.amberAccent,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 1!")),
                      ),
                      Container(
                        color: Colors.purpleAccent,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 02!")),
                      ),
                      Container(
                        color: Colors.lightGreenAccent,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 03!")),
                      ),
                      Container(
                        color: Colors.green,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 04!")),
                      ),
                      Container(
                        color: Colors.white,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 05!")),
                      ),
                      Container(
                        color: Colors.deepPurple,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 05!")),
                      ),
                      Container(
                        color: Colors.grey,
                        height: double.infinity,
                        width: 100,
                        child: Center(child: Text("Hello 06!")),
                      ),
                    ],
                  ),
                ),
                height: 250,
              ),
            ),

            Container(
              color: Colors.cyan,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.teal,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.amberAccent,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.cyan,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.teal,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.amberAccent,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.cyan,
              height: 250,
              width: 250,
            ),
            Container(
              color: Colors.teal,
              height: 250,
              width: 250,
            ),
          ]),
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











