


import 'package:flutter/material.dart';

import '../model/post_model.dart';
import '../services/services.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  late List<UserPostmodel>? _userlist = [];


  void _getData() async {
    _userlist = (await ApiService().getUser())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState((){}));
}


@override
  void initState() {
    super.initState();
    _getData();
  }






  Widget _getUserList(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example for Post'),
        actions: [
          IconButton(
              onPressed: () {
                // goBack(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp))
        ],
      ),
      body: _userlist == null || _userlist!.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : Center(
        child: ListView.builder(
          itemCount: _userlist!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: FlutterLogo(size: 72.0),
              title: Text(_userlist![index].title.toString()),
              subtitle: Text(_userlist![index].body.toString()),
              trailing: IconButton(
                onPressed: () {
                  // Navigator.pushAndRemoveUntil<dynamic>(
                  //   context,
                  //   MaterialPageRoute<dynamic>(
                  //     builder: (BuildContext context) =>
                  //         Detail(posts: _userlist![index]),
                  //   ),
                  //       (route) => false,
                  // );
                },
                icon: Icon(Icons.more_vert),
              ),
              isThreeLine: true,
            );
          },
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return _getUserList(context);
  }
}

