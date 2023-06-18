
import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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



        body: Column(
          children: [
            Container(
              color: Colors.blueAccent.shade700,
              height: 200,
                child:    ElevatedButton(
                  // Within the `FirstScreen` widget
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/page05');
                  },
                  child: const Text('Launch screen'),
                ),
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
