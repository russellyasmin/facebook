import 'package:facebook/asset.dart';
import 'package:facebook/widget/suggestionCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuggestionSection extends StatelessWidget {
  const SuggestionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        children: [
          ListTile(
            title: Text("People You May Know"),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey,
                )),
          ),
          Container(
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  addFriend: () {},
                  avatar: sung,
                  mutualFirend: '5 Mutual Friend',
                  name: "Sung Kang",
                  remove: () {},
                ),
                SuggestionCard(
                  addFriend: () {},
                  avatar: nathalie,
                  mutualFirend: '4 Mutual Friend',
                  name: "Nathalie Kelley",
                  remove: () {},
                ),
                SuggestionCard(
                  addFriend: () {},
                  avatar: paul,
                  mutualFirend: '7 Mutual Friend',
                  name: "Meadow Walker",
                  remove: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
