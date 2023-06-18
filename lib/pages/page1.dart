
import 'package:flutter/material.dart';

class PractisRow extends StatelessWidget {
  const PractisRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("app bar Routing Test"),

        actions: [

          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false,);
          }, icon: Icon(Icons.account_balance)),



          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page02", (route) => false,);
          }, icon: Icon(Icons.access_time_outlined)),


          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page03", (route) => false,);
          }, icon: Icon(Icons.accessibility_new_rounded)),


          IconButton(onPressed: (){
            Navigator.pushNamedAndRemoveUntil(context, "/page04", (route) => false,);
          }, icon: Icon(Icons.account_balance_wallet_rounded)),

        ],

      ),

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
                'Practise Row',
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
              child: ElevatedButton(
                // Within the `FirstScreen` widget
                onPressed: () {
                  // Navigate to the second screen using a named route.
                  Navigator.pushNamed(context, '/page02');
                },
                child: const Text('Launch screen'),
              ),

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