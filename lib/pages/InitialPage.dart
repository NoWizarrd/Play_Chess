import 'package:flutter/material.dart';
import 'package:play_chess/pages/RegistrationPage.dart';
import 'package:play_chess/pages/StartPage.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    String password = '';
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const Padding(padding: EdgeInsets.only(top: 200)),
          const Text('Введите \nлогин и пароль',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 35,
                fontFamily: 'Comfortaa',
                color: Colors.black
            ),
          ),
          Padding(padding: EdgeInsets.only(top: screenHeight * 0.024)),
          SizedBox(
            width: screenWidth * 0.76,
            height: screenHeight * 0.12,
            child: TextField(
              onChanged: (String value){
                password = value;
              },
              style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Comfortaa',
                  color: Colors.black
              ),
              decoration: const InputDecoration(
                labelText: 'Login',
                labelStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Comfortaa',
                    color: Color.fromRGBO(0, 0, 0, 0.1)
                ),
                helperText: 'Введите Логин',
                helperStyle: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Comfortaa',
                    color: Color.fromRGBO(26, 26, 26, 1.0)
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.deepOrange),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: screenHeight * 0.018)),
          SizedBox(
            width: screenWidth * 0.76,
            height: screenHeight * 0.12,
            child: TextField(
              onChanged: (String value){
                password = value;
              },
              style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Comfortaa',
                  color: Colors.black
              ),
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Comfortaa',
                    color: Color.fromRGBO(0, 0, 0, 0.1)
                ),
                helperText: 'Введите пароль',
                helperStyle: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Comfortaa',
                    color: Color.fromRGBO(26, 26, 26, 1.0)
                ),
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.zero)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.deepOrange),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: screenHeight * 0.018)),
          ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                        (Route<dynamic> route) => false
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(26, 26, 26, 1.0),
                fixedSize: Size(screenWidth * 0.76, screenHeight * 0.06),
              ),
              child: Container(
                alignment: Alignment.center,
                height: screenHeight * 0.06,
                width: screenWidth * 0.76,
                child: const Text('Войти',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Comfortaa',
                      color: Colors.white
                  ),
                ),
              )
          ),
          //const Padding(padding: EdgeInsets.only(top: 15)),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegistrationPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                fixedSize: Size(screenHeight * 0.76, screenWidth * 0.06),
              ),
              child: Container(
                alignment: Alignment.center,
                height: screenHeight * 0.06,
                width: screenWidth * 0.76,
                child: const Text('Регистрация',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Comfortaa',
                      color: Colors.black
                  ),
                ),
              )
          ),
        ],
      )
    );
  }
}
