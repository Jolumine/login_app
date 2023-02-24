import "package:flutter/material.dart";
import "package:login_app/utils/colors.dart";

Widget textform(String name, bool obscure, Icon icon) {
  return TextFormField(
    obscureText: obscure,
    decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        fillColor: gradientColor3,
        disabledBorder: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(),
        labelText: name,
        icon: icon,
        labelStyle: const TextStyle(
            fontSize: 20, fontFamily: "OleoScript", color: gradientColor3)),
  );
}
