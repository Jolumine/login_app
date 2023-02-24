import "package:flutter/material.dart";

import "package:login_app/utils/colors.dart";

import "package:login_app/widgets/textform.dart";

class HomeScreen extends StatefulWidget {
  @override
  State createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      onTap: () {},
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(100, 75, 100, 0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: gradientColor3),
                              child: const Center(
                                child: Text("Home",
                                    style: TextStyle(
                                        fontFamily: "OleoScript",
                                        fontSize: 55,
                                        color: gradientColor1)),
                              ))),
                    ],
                  ))),
        ],
      ),
    ));
  }
}
