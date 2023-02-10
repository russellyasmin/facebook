import 'package:facebook/asset.dart';
import 'package:facebook/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            padding: EdgeInsets.only(left: 6, right: 6),
            child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    side: BorderSide(color: Color(0xff89CFF0))),
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call,
                  color: Color(0xff8f00ff),
                ),
                label: const Text(
                  "Create \nRoom",
                  style: TextStyle(color: Colors.blue),
                )),
          ),
          Avatar(
            displayImage: paultwo,
            displayStatus: true,
          ),
          Avatar(
            displayImage: jordanatwo,
            displayStatus: true,
          ),
          Avatar(
            displayImage: vin,
            displayStatus: true,
          ),
          Avatar(
            displayImage: michellytwo,
            displayStatus: true,
          ),
          Avatar(
            displayImage: tyre,
            displayStatus: true,
          ),
        ],
      ),
    );
  }
}
