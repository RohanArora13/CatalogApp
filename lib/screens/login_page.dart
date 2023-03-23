import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner/utils/routes.dart';
import 'dart:io';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool animateButton = false;
  int seconds = 1;

  final _formKey = GlobalKey<FormState>();

  moveToHomePage(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      setState(() {
        // await Future.delayed(Duration(seconds: 1));
        animateButton = true;
        // sleep(const Duration(seconds:1));

        // Navigator.pushNamed(context, myRoutes.homeRoute);
        // animateButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    String hinttext = "username";
    String hintTextPassword = "password";

    final ButtonStyle styleButton = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 18), minimumSize: Size(30, 20));

    return Form(
      key: _formKey,
      child: Material(
        child: Column(children: [
          const SizedBox(
            height: 100, // <-- SEE HERE
          ),
          SvgPicture.asset(
            "assets/login.svg",
            width: 200,
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 100, // <-- SEE HERE
          ),
          // ignore: prefer_const_constructors
          Text(
            "login",
            // ignore: prefer_const_constructors
            style: TextStyle(
                fontSize: 25,
                color: Colors.black38,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
            child: Column(
              children: [
                TextFormField(
                  autofocus: false,
                  obscureText: false,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(hintText: hinttext),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  autofocus: false,
                  obscureText: true,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(hintText: hintTextPassword),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
          Material(
            color: Colors.blue,
            borderRadius: animateButton
                ? BorderRadius.circular(50)
                : BorderRadius.circular(5),
            child: InkWell(
                onTap: () => moveToHomePage(context),
                child: AnimatedContainer(
                    onEnd: () {
                      setState(() {
                        Navigator.pushNamed(context, myRoutes.homeRoute);
                        animateButton = false;
                      });
                    },
                    duration: Duration(seconds: seconds),
                    width: animateButton ? 30.0 : 100.0,
                    height: animateButton ? 30.0 : 30.0,
                    // decoration: BoxDecoration(
                    //     color: Colors.blue,
                    //     borderRadius: animateButton
                    //         ? BorderRadius.circular(50)
                    //         : BorderRadius.circular(5)),
                    child: animateButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 30.0,
                          )
                        : const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ))),
          )

          // ElevatedButton(
          //   style: styleButton,
          //   onPressed: () {
          //     Navigator.pushNamed(context, myRoutes.homeRoute);
          //   },
          //   child: const Text('Login'),
          //)
        ]),
      ),
    );
  }
}
