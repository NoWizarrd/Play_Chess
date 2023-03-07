import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
          elevation: 0,
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
              ),
            ), //ElevatedButton.styleFrom(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            //   shape: const CircleBorder()
            child: const Icon(
                Icons.person,
                color: Colors.black,
                size: 50,),)
        ],
      ),
      body:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Text('PLAY CHESS', style: TextStyle(
                fontFamily: 'ShantellSans',
                fontSize: 50,
                color: Colors.black,
              ),),
              TextButton(
                onPressed: (){

              },
                style: TextButton.styleFrom(
                  //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
                  fixedSize: const Size(320.0, 80.0),
                ),
                child: const Text(
                  textAlign: TextAlign.right,
                  'Новая игра',
                  style: TextStyle(
                    fontFamily: 'ShantellSans',
                    fontSize: 50,
                    color: Colors.black,
              ),),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextButton(
                onPressed: (){

                },
                style: TextButton.styleFrom(
                    //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
                    fixedSize: const Size(320.0, 80.0),
                ),
                child: const Text(
                  'История игр',
                  style: TextStyle(
                    fontFamily: 'ShantellSans',
                    fontSize: 50,
                    color: Colors.black,
                  ),),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextButton(
                onPressed: (){

                },
                style: TextButton.styleFrom(
                    //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
                    fixedSize: const Size(320.0, 80.0),
                ),
                child: const Text(
                  textAlign: TextAlign.left,
                  'Рейтинг',
                  style: TextStyle(
                    fontFamily: 'ShantellSans',
                    fontSize: 50,
                    color: Colors.black,
                  ),),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextButton(
                onPressed: (){

                },
                style: TextButton.styleFrom(
                    //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
                    fixedSize: const Size(320.0, 80.0),
                ),
                child: const Text(
                  'Профиль',
                  style: TextStyle(
                    fontFamily: 'ShantellSans',
                    fontSize: 50,
                    color: Colors.black,
                  ),),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              TextButton(
                onPressed: (){

                },
                style: TextButton.styleFrom(
                    //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
                    fixedSize: const Size(320.0, 80.0),
                ),
                child: const Text(
                  'Настройки',
                  style: TextStyle(
                    fontFamily: 'ShantellSans',
                    fontSize: 50,
                    color: Colors.black,
                  ),),
              ),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     Padding(padding: EdgeInsets.only(top: 20)),
          //     TextButton.icon(
          //       onPressed: (){
          //
          //       },
          //       style: TextButton.styleFrom(
          //         //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
          //         fixedSize: const Size(50.0, 20.0),
          //       ),
          //       icon: Icon(Icons.delete),
          //       label: const Text(
          //         '',
          //         style: TextStyle(
          //           fontFamily: 'ShantellSans',
          //           fontSize: 10,
          //           color: Colors.black,
          //         ),),
          //     ),
          //   ],
          // )
        ],
      ),
      //floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.person)),
    );
  }
}
