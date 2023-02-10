import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircularButton extends StatelessWidget {
  final IconData ButtonIcon;

  final void Function() buttonAction;
  final Color iconColor;

  CircularButton({
    required this.ButtonIcon,
    required this.buttonAction,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[350],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: buttonAction,
        icon: Icon(
          ButtonIcon,
          color: iconColor,
          size: 25,
        ),
      ),
    );
  }
}
