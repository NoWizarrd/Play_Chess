import 'package:flutter/material.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  String password = '';
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
              const Text('Введите \nЛогин и Пароль',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'ShantellSans',
                  color: Colors.black
              ),
              ),
              const Padding(padding: EdgeInsets.only(top: 20)),
              SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (String value){
                    password = value;
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
                        color: Color.fromRGBO(0, 0, 0, 0.1)
                    ),
                    helperText: 'Введите Логин',
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
                    password = value;
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
                        color: Color.fromRGBO(0, 0, 0, 0.1)
                    ),
                    helperText: 'Введите пароль',
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
                    Navigator.pushNamedAndRemoveUntil(context, '/startPage', (route) => true);
              },
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(26, 26, 26, 1.0),
                    fixedSize: const Size(300.0, 50.0),
                  ),
                  child: const Text('Войти',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'ShantellSans',
                      color: Colors.white
                  ),
                  )
              ),
              //const Padding(padding: EdgeInsets.only(top: 15)),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/registration', (route) => true);
                  },
                  style: TextButton.styleFrom(
                    //backgroundColor: Color.fromRGBO(148, 148, 148, 1.0),
                    fixedSize: const Size(300.0, 60.0),
                  ),
                  child: const Text('Регистрация',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'ShantellSans',
                        color: Colors.black
                    ),
                  )
              ),
            ],
          )
        ],
      )
    );
  }
}
