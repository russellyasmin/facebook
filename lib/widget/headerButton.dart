import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerButton({
  required String buttonText,
  required IconData buttonicon,
  required void Function() buttonAction,
  required Color color,
}) {
  return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        buttonicon,
        color: color,
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: Colors.black),
      ));
}
