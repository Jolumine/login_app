import "package:flutter/material.dart";
import "package:login_app/utils/colors.dart";

Widget buildSocialMediabtns() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      InkWell(
          onTap: () {
            print("Login with Facebook");
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: gradientColor3,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 2),
                          color: Colors.black,
                          blurRadius: 0.6)
                    ]),
              ),
              Image.asset("assets/icons/facebook.png", height: 40, width: 40)
            ],
          )),
      InkWell(
          onTap: () {
            print("Login with Google");
          },
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    color: gradientColor3,
                    borderRadius: BorderRadius.circular(50.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 2),
                          color: Colors.black,
                          blurRadius: 0.6)
                    ]),
              ),
              Image.asset("assets/icons/google.png", height: 40, width: 40)
            ],
          ))
    ],
  );
}
