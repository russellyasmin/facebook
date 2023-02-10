// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HeaderSectionButton extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonthree;

  HeaderSectionButton(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonthree});

  @override
  Widget build(BuildContext context) {
    Widget verticalDevider = VerticalDivider(
      thickness: 1,
      color: Color(0xffD3D3D3),
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDevider,
          buttonTwo,
          verticalDevider,
          buttonthree,
        ],
      ),
    );
  }
}
