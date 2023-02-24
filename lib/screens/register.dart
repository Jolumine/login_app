import "package:flutter/material.dart";

import "package:login_app/utils/colors.dart";

import "package:login_app/widgets/textform.dart";

class RegisterScreen extends StatefulWidget {
  @override
  State createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Stack(
        children: [
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
              child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(100, 75, 100, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: gradientColor3),
                              child: const Center(
                                child: Text("Sign up",
                                    style: TextStyle(
                                        fontFamily: "OleoScript",
                                        fontSize: 55,
                                        color: gradientColor1)),
                              ))),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 75, 0),
                        child:
                            textform("Name", false, const Icon(Icons.person)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 75, 0),
                        child: textform(
                            "Username", false, const Icon(Icons.person)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 75, 0),
                        child: textform(
                            "Password", false, const Icon(Icons.password)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 75, 0),
                        child: textform(
                            "Confirm", false, const Icon(Icons.password)),
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 25),
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: gradientColor3,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: const <Widget>[
                                        Text("Create",
                                            style: TextStyle(
                                                fontFamily: "OleoScript",
                                                fontSize: 30,
                                                color: gradientColor1)),
                                        Icon(Icons.person_add_alt,
                                            size: 30, color: gradientColor1)
                                      ]))))
                    ],
                  ))),
        ],
      ),
    ));
  }
}
