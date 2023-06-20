


import 'dart:developer';

import '../model/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService{


  Future<List<UserPostmodel>?> getUser() async {
    try {
      var url = Uri.parse("http://192.168.20.46:8080/api/posts");

      var response = await http.get(url);
      if (response.statusCode == 200) {
        // List<UserPostmodel> _model = postsFromJson(response.body);
        List<UserPostmodel> _model = postModel(response.body);

        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }



}