import "package:flutter/material.dart";

import "package:login_app/utils/colors.dart";

import "package:login_app/widgets/textform.dart";
import "package:login_app/widgets/socialmedia.dart";

import 'package:login_app/screens/register.dart';
import "package:login_app/screens/home.dart";

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login",
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? _rememberme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                gradientColor1,
                gradientColor2,
                gradientColor3
              ])),
        ),
        SizedBox(
            // maybe switch
            height: double.infinity,
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 75, 100, 0),
                        child: Container(
                            alignment: Alignment.center,
                            height: 75,
                            decoration: BoxDecoration(
                                color: gradientColor3,
                                borderRadius: BorderRadius.circular(50.0)),
                            child: const Text("Sign in",
                                style: TextStyle(
                                    fontSize: 55,
                                    color: gradientColor1,
                                    fontFamily: "OleoScript"))),
                      ),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(50, 75, 75, 0),
                          child: textform(
                              "Username", false, const Icon(Icons.person))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(50, 50, 75, 15),
                          child: textform(
                              "Password", true, const Icon(Icons.password))),
                      Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 20),
                          child: Row(children: <Widget>[
                            Checkbox(
                                checkColor: gradientColor3,
                                activeColor: gradientColor2,
                                value: _rememberme,
                                onChanged: (value) {
                                  setState(() {
                                    _rememberme = value;
                                  });
                                }),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                  fontFamily: "OleoScript",
                                  fontSize: 20,
                                  color: gradientColor3),
                            )
                          ])),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 25),
                        child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomeScreen();
                              }));
                            },
                            child: Container(
                              width: 150,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: gradientColor3,
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 2),
                                      color: Colors.black,
                                      blurRadius: 0.6)
                                ],
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const <Widget>[
                                    Text(
                                      "Login",
                                      style: TextStyle(
                                          fontFamily: "OleoScript",
                                          fontSize: 30,
                                          color: gradientColor1),
                                    ),
                                    Icon(Icons.login,
                                        color: gradientColor1, size: 30)
                                  ]),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return RegisterScreen();
                                    }));
                                  },
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontFamily: "Oleoscript",
                                        fontSize: 28,
                                        color: gradientColor1),
                                  )),
                              const Text(
                                "- OR -",
                                style: TextStyle(
                                    fontFamily: "OleoScript",
                                    fontSize: 18,
                                    color: gradientColor1),
                              ),
                              buildSocialMediabtns(),
                            ]),
                      )
                    ]))),
      ],
    ));
  }
}
