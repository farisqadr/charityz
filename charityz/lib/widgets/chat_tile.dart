import 'package:flutter/material.dart';
import 'package:charityz/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/friend1.png',
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
              'Joshuer',
              style: titleTextStyle,
            ),
            Text(
              'Sorry you are not my',
              style: subTitleTextStyle.copyWith(color: blackColor),
            ),
          ],
        ),
        Spacer(),
        Text(
          'Now',
          style: subTitleTextStyle,
        )
      ],
    );
  }
}
