
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



showToast(String mess, BuildContext buildContext){
  Fluttertoast.showToast(msg: mess);
}


class PractiseGird extends StatelessWidget {
  const PractiseGird({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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


      body: GridView.count(
        mainAxisSpacing: 5,
        crossAxisSpacing: 50,
        crossAxisCount: 2,

        // scrollDirection: Axis.horizontal,

        children: [

          // Container(
          //
          //   height: 200,
          //   width: 200,
          //         decoration: BoxDecoration(
          //                   image: DecorationImage(
          //       image: AssetImage("images/tiger-jpg.jpg"),
          //         fit: BoxFit.cover,
          //
          //     ),
          //   ),
          //
          // ),

          InkWell(
            onTap: (){
              showToast("hello", context);
            },
            child: Container(
              color: Colors.blue,

              // child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.black
              //   ),
              //   onPressed: (){
              //     showToast("Hello Dartsdfsdf", context);
              //   }, child: Text("Button"),
              // ),

            ),
          ),

          InkWell(
            onTap: (){
              showToast("hello", context);
            },
            child: Container(
              color: Colors.blue,


              // child: ElevatedButton(
              //   style: ElevatedButton.styleFrom(
              //       primary: Colors.black
              //   ),
              //   onPressed: (){
              //     showToast("Hello Dartsdfsdf", context);
              //   }, child: Text("Button"),
              // ),

            ),
          ),

          Container(
            // color: Colors.blueAccent,
            child: OutlinedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/page04');
              },
              child: Text("Out Lined Button"),

            ),
          )
        ],

      ),
    ));
  }
}
