import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          margin: EdgeInsets.fromLTRB(screenWidth / 40, screenHeight / 30, screenWidth / 40, screenHeight / 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color.fromRGBO(48, 48, 48, 1.0),
          ),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 70,
                    backgroundImage: AssetImage('images/avatar.jpg'),

                ),
            ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Avatar - Nickname here', style: TextStyle(color: Colors.black)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Raiting: 1200 elo', style: TextStyle(color: Colors.black)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Количество игр, процент побед', style: TextStyle(color: Colors.black)),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Кнопка назад', style: TextStyle(color: Colors.black)),
                ])
          ],
        ),
        ),
      ),
    );
  }
}
