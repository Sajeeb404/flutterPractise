





import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:http/http.dart' as http;

import '../model/post_model.dart';
import '../services/services.dart';



class EditsPage extends StatefulWidget {


  final UserPostmodel? posts;
  EditsPage({this.posts});



  @override
  State<EditsPage> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<EditsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("compnay name"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Signups(postss: widget.posts),
      ),
    );
  }
}

class Signups extends StatefulWidget {

  final UserPostmodel? postss;
  Signups({this.postss});


  @override
  State<Signups> createState() => _SignupsState();
}
class _SignupsState extends State<Signups> {


  // TextEditingController _user = TextEditingController();
  // TextEditingController _user2 = TextEditingController();

  int _id = 0;

  String _name = "";
  String _email = "";
  int _age = -1;
  String _maritalStatus = "Single";
  String _password = "";
  int _selectedGender = 0;
  bool _termsChecked = true;


  @override
  void initState() {
    // TODO: implement initState

    print("------------------------"+ widget.postss!.title.toString());

    // _user.text = widget.postss!.title.toString();
    // _user2.text = widget.postss!.body.toString();
    _name = widget.postss!.title.toString();
    _password = widget.postss!.body.toString();
    _id = widget.postss!.id!;


  }



  final _passKey = GlobalKey<FormFieldState>();




  loadGenderList() {
    genderList = [];
    genderList.add(const DropdownMenuItem(
      child: Text("Male"),
      value: 0,
    ));

    genderList.add(const DropdownMenuItem(
      child: Text("Female"),
      value: 1,
    ));

    genderList.add(const DropdownMenuItem(
      child: Text("Outhers"),
      value: 2,
    ));
  }
  




  List<DropdownMenuItem<int>> genderList = [];

  @override
  Widget build(BuildContext context) {
    loadGenderList();
    return Form(
      child: ListView(
        children: getFormWidget(),
      ),
    );
  }


  List<Widget> getFormWidget() {

    List<Widget> formWidget = [];

    formWidget.add(
      TextFormField(
        // controller: _user,
        initialValue: _name,
        decoration:
        const InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a name';
          } else {
            return null;
          }
        },




        onChanged: (value) {
          _name = value.toString();
        },


      ),
    );

    validateEmail(String? value) {
      if (value!.isEmpty) {
        return 'Please enter mail';
      }

      Pattern pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regex = RegExp(pattern.toString());
      if (!regex.hasMatch(value.toString())) {
        return 'Enter Valid Email';
      } else {
        return null;
      }
    }


    formWidget.add(TextFormField(
      initialValue: _password,
      decoration:
      const InputDecoration(labelText: 'Enter Email', hintText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: validateEmail,



      onChanged: (value) {
        _email = value.toString();
      },

    ),);

    formWidget.add(TextFormField(
      decoration:
      const InputDecoration(hintText: 'Age', labelText: 'Enter Age'),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter age';
        } else {
          return null;
        }
      },
      onChanged: (value) {
        _age = int.parse(value.toString());
      },
    ));

    formWidget.add(
        DropdownButton(
          hint: const Text('Select Gender'),
          items: genderList,
          value: _selectedGender,
          onChanged: (value) {
            _selectedGender = int.parse(value.toString());
          },
          isExpanded: true,
        ));



    formWidget.add(Column(

      children: <Widget>[

        RadioListTile<String>(
          title: const Text('Single'),
          value: 'single',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value.toString();
            });
          },
        ),

        RadioListTile<String>(
          title: const Text('Married'),
          value: 'married',
          groupValue: _maritalStatus,
          onChanged: (value) {
            setState(() {
              _maritalStatus = value.toString();
            });

          },
        ),

      ],
    ));

    formWidget.add(
      TextFormField(
          key: _passKey,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Password', labelText: 'Enter Password'),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please Enter password';
            } else if (value.length < 8) {
              return 'Password should be more than 8 characters';
            } else {
              return null;
            }
          }),
    );

    formWidget.add(
      TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Confirm Password',
              labelText: 'Enter Confirm Password'),
          validator: (confirmPassword) {
            if (confirmPassword != null && confirmPassword.isEmpty) {
              return 'Enter confirm password';
            }
            var password = _passKey.currentState?.value;
            if (confirmPassword != null &&
                confirmPassword.compareTo(password) != 0) {
              return 'Password mismatch';
            } else {
              return null;
            }
          },
          onChanged: (value) {
            _password = value.toString();
          }),
    );

    formWidget.add(CheckboxListTile(
      value: _termsChecked,
      onChanged: (value) {
        setState(() {
          _termsChecked = value.toString().toLowerCase() == 'true';
        });
      },
      subtitle: !_termsChecked
          ? const Text(
        'Required',
        style: TextStyle(color: Colors.red, fontSize: 12.0),
      )
          : null,
      title: const Text(
        'I agree to the terms and condition',
      ),
      controlAffinity: ListTileControlAffinity.leading,
    ));

    Future<void> onPressedSubmitUpade() async {

      //
      // UserPostmodel up = new UserPostmodel();
      //
      // up.title = _name;
      // up.body = _password;
      //
      //
      //
      // if(widget.postss != null){
      //   up.id = _id;
      // }
      //
      // (await ApiService().onPressedUpdate(up))!;
      //
      //
      //
      // Navigator.pushNamed(context, '/userlists');

      
      

      // final String urls = "http://192.168.20.38:8080/api/posts";
      // var reqBody = {
      //   "id":_id,
      //   "title": _name,
      //   "body": _email,
      // };
      
      
      //
      // var response = await http.post(Uri.parse(urls),
      //     headers:{"Content-Type":"application/json"},
      //     body: jsonEncode(reqBody)
      // );

      
      
      // var jsonResponse = jsonDecode(response.body);
     
      
      
      

    }

    formWidget.add(ElevatedButton(
        child: const Text('Sign Up'), onPressed: onPressedSubmitUpade));

    formWidget.add(ElevatedButton(
        child: const Text('Login'), onPressed: (){

      // Navigator.pushAndRemoveUntil<dynamic>(context,
      //   MaterialPageRoute<dynamic>(
      //     builder: (BuildContext context) =>Home(),
      //   ),
      //       (route) =>false,
      // );

      Navigator.pushNamed(context, '/');
    }));


    formWidget.add(ElevatedButton(
        child: const Text('User List'), onPressed: (){

      // Navigator.pushAndRemoveUntil<dynamic>(context,
      //   MaterialPageRoute<dynamic>(
      //     builder: (BuildContext context) =>Home(),
      //   ),
      //       (route) =>false,
      // );

      Navigator.pushNamed(context, '/userlists');


    }));

    return formWidget;
  }


}


