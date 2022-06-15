import 'package:flutter/material.dart';
import 'package:charityz/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;

  ChatTile({this.imageUrl, this.name, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: subTitleTextStyle.copyWith(color: blackColor),
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitleTextStyle,
          )
        ],
      ),
    );
  }
}
