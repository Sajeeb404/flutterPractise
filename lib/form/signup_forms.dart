import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("compnay name"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Signups(),
      ),
    );
  }
}

class Signups extends StatefulWidget {
  const Signups({super.key});

  @override
  State<Signups> createState() => _SignupsState();
}
class _SignupsState extends State<Signups> {


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


  final _passKey = GlobalKey<FormFieldState>();
  String _name = "";
  String _email = "";
  int _age = -1;
  String _maritalStatus = "Single";
  String _password = "";
  String _seletectGender = "0";
  bool _termasChecked = true;
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

    formWidget.add(Center(child: Text("Sign Up",
    style: TextStyle(
      fontSize: 40,
    ),),
    ));


    formWidget.add(TextFormField(
      decoration: InputDecoration(hintText: "Name"),
      validator: (value) {
        if (value ! .isEmpty) {
          return "Please Enter a Name";
        } else {
          return null;
        }
      },
      onSaved: (value) {
        setState() {
          _name = value.toString();
        };
      },
    ));

    formWidget.add(


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,

        children: [

          Text("Gender : ", style:
            TextStyle(
              fontSize: 20,
            ),),


          Radio<String>(
            value: 'single',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            },
          ),
          Expanded(child: Text('Single')),



          Radio<String>(
            value: 'married',
            groupValue: _maritalStatus,
            onChanged: (value) {
              setState(() {
                _maritalStatus = value.toString();
              });
            },
          ),
          Expanded(child: Text('Married')),




        ],
      ),
    );






    return formWidget;
  }


}


