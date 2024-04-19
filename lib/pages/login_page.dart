import 'package:codepurs/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                height: 300,
                fit: BoxFit.cover,
              ),
              Text("welcome!",
                  style: TextStyle(
                    fontSize: 40,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text('Login', style: TextStyle(color: Colors.black)),
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                style: TextButton.styleFrom(
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.deepPurple),
              ),
            ],
          ),
        ));
  }
}
