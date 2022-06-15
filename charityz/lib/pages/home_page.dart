import 'package:charityz/theme.dart';
import 'package:flutter/material.dart';
import 'package:charityz/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/profpic.png',
                    height: 100, width: 100),
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
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        text: 'Hello World!',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriela',
                        text: 'I saw clearly!',
                        time: '2:30',
                        unread: false,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone',
                        time: '11:11',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here we go again',
                        time: '7:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Bentley',
                        text: 'The car that we afford',
                        time: '7:11',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}
