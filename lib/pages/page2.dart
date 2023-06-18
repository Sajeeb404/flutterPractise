


import 'package:flutter/material.dart';

class Practise01 extends StatelessWidget {
  const Practise01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text("app bar Routing Test"),

        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false,);
          }, icon: Icon(Icons.account_balance)),

          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page02", (route) => false,);
          }, icon: Icon(Icons.account_balance)),


          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page03", (route) => false,);
          }, icon: Icon(Icons.account_balance)),


          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page04", (route) => false,);
          }, icon: Icon(Icons.account_balance)),

        ],

      ),


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
                      ElevatedButton(
                        // Within the `FirstScreen` widget
                        onPressed: () {
                          // Navigate to the second screen using a named route.
                          Navigator.pushNamed(context, '/page03');
                        },
                        child: const Text('Launch screen'),
                      ),
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