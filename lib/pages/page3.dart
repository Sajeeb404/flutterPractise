
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: Colors.blueAccent.shade700,
              height: 200,
            ),
            Container(
              color: Colors.blueAccent.shade100,
              height: 200,
            ),
          ],

          
        ),
      ),
    );
  }
}
