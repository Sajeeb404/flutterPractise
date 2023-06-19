import 'package:flutter/material.dart';

import '../pages/page4.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emaileditingController = TextEditingController();
  TextEditingController passwordeditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueAccent.shade100,
      appBar: AppBar(
        title: Center(child: Text("Company Name")),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Center(
                child: Image(
                  image: AssetImage("images/tiger-jpg.jpg"),
                  width: 200.0,
                  height: 200.0,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              Text(
                "Login as a Tiger",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.0,
                    ),
                    TextField(
                      controller: emaileditingController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextField(
                      controller: passwordeditingController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (!emaileditingController.text.contains("@")) {
                            showToast("Ivalid email", context);
                          } else if (passwordeditingController.text.length <
                              6) {
                            showToast("Ivalid password", context);
                          } else {
                            showToast("Successfull Login", context);
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Text(
                        "Don't have an account",
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/pagesignup');
                          },
                          child: Text("Sign Up")),
                    ]),
                  ],
                ),
              ),

              // TextButton(onPressed: onPressed(){}, child: null)
            ],
          ),
        ),
      ),
    ));
  }
}
