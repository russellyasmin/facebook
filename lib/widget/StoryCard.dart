import 'package:facebook/asset.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  final bool displayBorder;

  StoryCard(
      {required this.labelText,
      required this.story,
      required this.avatar,
      this.createStoryStatus = false,
      this.displayBorder = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(story), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: createStoryStatus
                ? CircularButton(
                    ButtonIcon: Icons.add,
                    iconColor: Colors.blue,
                    buttonAction: () {})
                : Avatar(
                    displayImage: avatar,
                    displayStatus: false,
                    displayBorder: displayBorder,
                    width: 40,
                    height: 40,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText != null ? labelText : "",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
