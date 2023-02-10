import 'package:facebook/asset.dart';
import 'package:facebook/sections/headerSectionButton.dart';
import 'package:facebook/sections/roomsection.dart';
import 'package:facebook/sections/statussection.dart';
import 'package:facebook/sections/storysection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widget/circularButton.dart';
import 'package:facebook/widget/headerButton.dart';
import 'package:facebook/widget/postCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget thindivider = Divider(
      thickness: 1,
      color: Color(0xffD3D3D3),
    );
    Widget thickline = Divider(
      thickness: 10,
      color: Color(0xffD3D3D3),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              "Facebook",
              style: TextStyle(
                  color: Color(0xff4267B2),
                  fontWeight: FontWeight.bold,
                  fontSize: 26),
            ),
            actions: [
              CircularButton(
                ButtonIcon: Icons.search,
                buttonAction: () {},
              ),
              CircularButton(
                ButtonIcon: Icons.chat,
                buttonAction: () {},
              ),
            ]),
        body: ListView(
          children: [
            StatusSection(),
            thindivider,
            HeaderSectionButton(
              buttonOne: headerButton(
                  buttonText: "Live",
                  buttonicon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.red),
              buttonTwo: headerButton(
                  buttonText: "Photo",
                  buttonicon: Icons.photo_library,
                  buttonAction: () {},
                  color: Colors.green),
              buttonthree: headerButton(
                  buttonText: "Room",
                  buttonicon: Icons.video_call,
                  buttonAction: () {},
                  color: Colors.purple),
            ),
            thickline,
            RoomSection(),
            thindivider,
            StorySection(),
            thickline,
            PostCard(
              avatar: jordanatwo,
              name: "Jordana Brewster",
              publishedAT: "5h",
              postImage: jordanaThree,
              postTitile: 'Life is shining',
              showBlueTick: true,
              commentCount: '1K',
              likeCount: '10K',
              shareCount: '2K',
            ),
            thickline,
            PostCard(
              avatar: vin,
              name: "Vin diesel",
              publishedAT: "2 day",
              postImage: vintwo,
              postTitile: "",
              showBlueTick: true,
              commentCount: '3.5K',
              likeCount: '100K',
              shareCount: '5K',
            ),
            thickline,
            SuggestionSection(),
            thickline,
            PostCard(
              avatar: tyre,
              name: "Tyrese Gibson",
              publishedAT: "6 day",
              postImage: tyretwo,
              postTitile: "#family",
              showBlueTick: true,
              commentCount: '4K',
              likeCount: '55K',
              shareCount: '2.5K',
            ),
            thickline,
            PostCard(
              avatar: michellytwo,
              name: "Michelle Rodriguez",
              publishedAT: "11 day",
              postImage: michelly,
              postTitile: "",
              showBlueTick: true,
              commentCount: '3K',
              likeCount: '66K',
              shareCount: '1K',
            ),
            thickline
          ],
        ),
      ),
    );
  }
}
