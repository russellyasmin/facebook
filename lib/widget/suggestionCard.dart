import 'dart:ffi';

import 'package:facebook/asset.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFirend;
  final void Function() addFriend;
  final void Function() remove;

  SuggestionCard(
      {required this.avatar,
      required this.name,
      required this.mutualFirend,
      required this.addFriend,
      required this.remove});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 5, right: 5),
      child: Stack(
        children: [suggestionImage(), suggetionIfo()],
      ),
    );
  }

  Widget suggetionIfo() {
    return Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
          height: 140,
          decoration: BoxDecoration(
              color: Color(0xffE5E4E2),
              border: Border.all(
                width: 2,
                color: Color(0xffE5E4E2),
              ),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Column(
            children: [
              ListTile(
                title: Text(name != null ? name : ""),
                subtitle: Text(mutualFirend),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    iconButton(
                        buttonAction: addFriend,
                        buttonIcon: Icons.add_moderator,
                        buttonColor: Colors.blue,
                        buttonTextColor: Colors.white,
                        buttonIconColor: Colors.white,
                        buttonText: "Add Friend"),
                    blankButton(
                        buttonAction: remove,
                        buttonText: "Remove",
                        buttonColor: Color(0xffD3D3D3),
                        buttonTextColor: Colors.black)
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget suggestionImage() {
    return Positioned(
        top: 0,
        right: 0,
        left: 0,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: avatar != null
              ? Image.asset(
                  avatar,
                  height: 250,
                  fit: BoxFit.cover,
                )
              : SizedBox(),
        ));
  }
}

Widget blankButton(
    {required void Function() buttonAction,
    required String buttonText,
    required Color buttonColor,
    required Color buttonTextColor}) {
  return TextButton(
      onPressed: buttonAction,
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(buttonColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))))),
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)));
}

Widget iconButton({
  required Function() buttonAction,
  required IconData buttonIcon,
  required Color buttonTextColor,
  required Color buttonIconColor,
  required String buttonText,
  required Color buttonColor,
}) {
  return TextButton.icon(
    onPressed: buttonAction,
    style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))))),
    icon: Icon(buttonIcon, color: buttonIconColor),
    label: Text(
      buttonText,
      style: TextStyle(color: buttonTextColor),
    ),
  );
}
