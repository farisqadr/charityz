import 'package:flutter/material.dart';
import 'package:charityz/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

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
                style: unread
                    ? subTitleTextStyle.copyWith(color: blackColor)
                    : subTitleTextStyle,
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
