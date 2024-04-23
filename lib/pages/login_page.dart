import 'package:codepurs/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
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
              Text("welcome! $name",
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
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
              // ElevatedButton(
              //   child: Text('Login', style: TextStyle(color: Colors.black)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   style: TextButton.styleFrom(
              //       minimumSize: Size(150, 40),
              //       backgroundColor: Colors.deepPurple),

              // ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changedButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: changedButton ? 100 : 150,
                  alignment: Alignment.center,
                  child: changedButton
                      ? Icon(Icons.done, color: Colors.white)
                      : Text(
                          'login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
