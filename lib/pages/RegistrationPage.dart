import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String password1 = '';
  String password2 = '';
  String login = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 200)),
              SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (String value){
                    login = value;
                  },
                  style: const TextStyle(
                      fontSize: 22,
                      fontFamily: 'ShantellSans',
                      color: Colors.black
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Login',
                    labelStyle: TextStyle(
                        fontSize: 22,
                        fontFamily: 'ShantellSans',
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Введите почту/номер телефона',
                    helperStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'ShantellSans',
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
              const Padding(padding: EdgeInsets.only(top: 15)),
              SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (String value){
                    password1 = value;
                  },
                  style: const TextStyle(
                      fontSize: 22,
                      fontFamily: 'ShantellSans',
                      color: Colors.black
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 22,
                        fontFamily: 'ShantellSans',
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Придумайте пароль',
                    helperStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'ShantellSans',
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
              const Padding(padding: EdgeInsets.only(top: 15)),
              SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (String value){
                    password2 = value;
                  },
                  style: const TextStyle(
                      fontSize: 22,
                      fontFamily: 'ShantellSans',
                      color: Colors.black
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 22,
                        fontFamily: 'ShantellSans',
                        color: Color.fromRGBO(84, 84, 84, 1.0)
                    ),
                    helperText: 'Повторите пароль',
                    helperStyle: TextStyle(
                        fontSize: 10,
                        fontFamily: 'ShantellSans',
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
              const Padding(padding: EdgeInsets.only(top: 15)),
              TextButton(
                  onPressed: () {
                    if (password1 == password2){
                      FirebaseFirestore.instance.collection('Accouns').add({'login':  login, 'password': password1});
                    }
                    password1 = '';
                    password2 = '';
                    login = '';
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 26, 1.0),
                    fixedSize: const Size(300.0, 60.0),
                  ),
                  child: const Text('Регистрация',
                    style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'ShantellSans',
                        color: Colors.white
                    ),
                  )
              ),
            ],
          )
        ],
      ),
    );
  }
}
