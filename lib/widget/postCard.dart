import 'package:facebook/asset.dart';
import 'package:facebook/sections/headerSectionButton.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:facebook/widget/blueTick.dart';
import 'package:facebook/widget/headerButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedAT;
  final String postImage;
  final String postTitile;
  final bool showBlueTick;
  final String commentCount;
  final String shareCount;
  final String likeCount;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.publishedAT,
      required this.postImage,
      required this.postTitile,
      required this.commentCount,
      required this.likeCount,
      required this.shareCount,
      this.showBlueTick = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titileSection(),
          imageSection(),
          footerSection(),
          Divider(
            color: Colors.grey,
          ),
          HeaderSectionButton(
            buttonOne: headerButton(
                buttonText: "Like",
                buttonicon: Icons.thumb_up,
                buttonAction: () {},
                color: Colors.grey),
            buttonTwo: headerButton(
                buttonText: "Comment",
                buttonicon: Icons.comment,
                buttonAction: () {},
                color: Colors.grey),
            buttonthree: headerButton(
                buttonText: "Share",
                buttonicon: Icons.share,
                buttonAction: () {},
                color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: avatar, displayStatus: false),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 5,
          ),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAT == null ? "" : publishedAT),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey,
            size: 20,
          ),
        ],
      ),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
    );
  }

  Widget titileSection() {
    return postTitile != null && postTitile != ""
        ? Container(
            padding: EdgeInsets.only(bottom: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  postTitile == null ? "" : postTitile,
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ],
            ),
          )
        : SizedBox();
  }

  Widget imageSection() {
    return Container(
        padding: EdgeInsets.only(top: 5), child: Image.asset(postImage));
  }

  Widget footerSection() {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 5, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 16,
                  height: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                displayText(label: likeCount),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
              child: Row(
            children: [
              displayText(label: commentCount),
              const SizedBox(
                width: 5,
              ),
              displayText(label: "Comments"),
              const SizedBox(width: 10),
              displayText(label: shareCount),
              const SizedBox(
                width: 5,
              ),
              displayText(label: "Shares"),
            ],
          )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Avatar(
                  displayImage: avatar,
                  displayStatus: false,
                  width: 30,
                  height: 30,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(color: Colors.grey),
    );
  }
}
