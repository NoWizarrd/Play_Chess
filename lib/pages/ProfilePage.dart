import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_chess/pages/StartPage.dart';

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

    void _goToMainScreen(BuildContext context) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => StartPage()));
    }

    return Scaffold(
      backgroundColor: Color.fromRGBO(36, 36, 36, 1),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
          margin: EdgeInsets.fromLTRB(screenWidth / 40, screenHeight / 30, screenWidth / 40, screenHeight / 30),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(94, 94, 94, 1.0), Color.fromRGBO(48, 48, 48, 1.0),],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              SizedBox(height: 16),
              Text(
                'Никнейм',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                    fontFamily: 'Roboto'
                ),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                    'Изменить профиль',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'roboto',
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(99, 99, 99, 1),
                  shadowColor: Colors.black,
                  elevation: 6,
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Рейтинг',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'roboto'
                        ),),
                      Text(
                        '1200',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'
                        ),),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                          'Количество игр',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'
                        ),),
                      Text(
                          '10 (60%)',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Roboto'
                        ),),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 32),
              Expanded(
                child: Align(

                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () => _goToMainScreen(context),
                    child: Text(
                        'На главный экран',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        fontFamily: 'Roboto'
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      minimumSize: Size(double.infinity, 0),
                      backgroundColor: Color.fromRGBO(99, 99, 99, 1),
                      shadowColor: Colors.black,
                      elevation: 6,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
