import 'package:flutter/material.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    String password1 = '';
    String password2 = '';
    String login = '';
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const Padding(padding: EdgeInsets.only(top: 200)),
              SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.12,
                child: TextField(
                  onChanged: (String value){
                    login = value;
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
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Введите почту/номер телефона',
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
              //const Padding(padding: EdgeInsets.only(top: 15)),
              SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.12,
                child: TextField(
                  onChanged: (String value){
                    password1 = value;
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
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Придумайте пароль',
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
              //const Padding(padding: EdgeInsets.only(top: 15)),
              SizedBox(
                width: screenWidth * 0.76,
                height: screenHeight * 0.12,
                child: TextField(
                  onChanged: (String value){
                    password2 = value;
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
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Повторите пароль',
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
              //const Padding(padding: EdgeInsets.only(top: 15)),
              ElevatedButton(
                  onPressed: () {
                    if (password1 == password2){
                      //FirebaseFirestore.instance.collection('Accouns').add({'login':  login, 'password': password1});
                    }
                    password1 = '';
                    password2 = '';
                    login = '';
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 26, 1.0),
                    fixedSize: Size(screenWidth * 0.76, screenHeight * 0.06),
                  ),
                  child: Container(
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.76,
                      alignment: Alignment.center,
                    child: const Text('Регистрация',
                        style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'Comfortaa',
                            color: Colors.white
                        ),
                    )
                  ),
              )
            ],
          )
        ],
      ),
    );
  }
}
