import 'package:charityz/theme.dart';
import 'package:flutter/material.dart';
import 'package:charityz/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        body: SafeArea(
          child: Center(
            child: Column(children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/profpic.png', height: 100, width: 100),
              const SizedBox(height: 20),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(fontSize: 20, color: whiteColor),
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(color: lightBlue, fontSize: 16),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ChatTile(),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
