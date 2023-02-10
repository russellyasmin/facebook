import 'package:facebook/asset.dart';
import 'package:facebook/widget/StoryCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add to Story",
            avatar: paul,
            story: paul,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Jordana Brewster",
            avatar: jordanatwo,
            story: jordana,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Vin Diesel",
            avatar: vin,
            story: vintwo,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Tyrese Gibson",
            avatar: tyre,
            story: tyretwo,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Michelle Rodriguez",
            avatar: michellytwo,
            story: michelly,
            displayBorder: true,
          ),
        ],
      ),
    );
  }
}
