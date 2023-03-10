import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayStatus;
  final bool displayBorder;
  final double width;
  final double height;

  Avatar(
      {required this.displayImage,
      required this.displayStatus,
      this.displayBorder = false,
      this.height = 50,
      this.width = 50});
  @override
  Widget build(BuildContext context) {
    Widget statusIndicator;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: displayBorder
                  ? Border.all(color: Colors.blueAccent, width: 3)
                  : Border()),
          padding: EdgeInsets.only(left: 3, right: 3),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child: Image.asset(
                displayImage,
                fit: BoxFit.cover,
                width: width,
                height: height,
              )),
        ),
        displayStatus == true
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
