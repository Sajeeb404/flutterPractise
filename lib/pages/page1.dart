
import 'package:flutter/material.dart';

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