import 'dart:html';
import 'package:flutter/src/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:master/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";

  bool changebutton = false;
  final _formKey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "welcome $name",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60.0, vertical: 80),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: " Enter username",
                                labelText: "Username"),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "please enter some text";
                              } else {
                                return null;
                              }
                            },
                            onChanged: ((value) {
                              name = value;
                              setState(() {});
                            }),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter password",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Password cannot be empty";
                              } else if (value.length < 6) {
                                return "Password length should be atleast 6";
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Material(
                            borderRadius:
                                BorderRadius.circular(changebutton ? 20 : 8),
                            child: InkWell(
                              onTap: () => movetohome(context),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 4),
                                width: changebutton ? 50 : 100,
                                height: 50,
                                alignment: Alignment.center,
                                child: changebutton
                                    ? Icon(Icons.done)
                                    : Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                decoration: BoxDecoration(
                                  color: Colors.deepPurple,
                                  // shape:
                                  //     changebutton ? BoxShape.circle : BoxShape.rectangle,
                                ),
                              ),
                            ),
                          )
                          /*ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.HomeRoute);
                    },
                    child: Text('Login'),
                    style: TextButton.styleFrom(maximumSize: Size(1800, 70)),
                  )*/
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
