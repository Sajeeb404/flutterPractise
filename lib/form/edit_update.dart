

import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../services/services.dart';

class EditData extends StatelessWidget {

  final UserPostmodel? posts;

  const EditData({super.key, this.posts});







  Widget getPost(context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 1.0),
            Text(
              "Id : " + posts!.id.toString(),
              style: TextStyle(fontSize: 15, fontFamily: "bolt-semibold"),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 1.0), // give it width

            Text(
              posts!.body.toString(),
              style: TextStyle(fontSize: 10, fontFamily: "bolt-semibold"),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 1.0), // give it width

            TextButton(
                onPressed: () async {

                  (await ApiService().deletePosts(posts!.id));

                  // Navigator.pushNamedAndRemoveUntil(
                  //   context,
                  //   "/userlists",
                  //       (route) => false,
                  // );

                  Navigator.pushNamed(context, '/userlists');



                  // print("Delete Call!");
                },
                child: Icon(Icons.delete)),

            TextButton(
                onPressed: () {




                  Navigator.pushNamed(context, '/pagesignup');
                },
                child: Icon(Icons.edit)),


          ],
        ),
      ),
    );
  }






  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(

        ),

          body: getPost(context)

      ),
    );

  }





}
