import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:play_chess/pages/GameModesPage.dart';
import 'package:play_chess/pages/HistoryPage.dart';
import 'package:play_chess/pages/SettingsPage.dart';



//
class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: <Widget>[
                Positioned.fill(child:
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(106, 74, 25, 1.0)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                  ),
                )
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight/5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GameModesPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        elevation: 5,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(right: screenWidth/100)),
                          SvgPicture.asset(
                            'images/ФерзьЧ.svg',
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            //width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Игра',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),),
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Сыграть партию', style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned.fill(child:
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(194, 184, 146, 1.0)
                  ),
                )
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight/5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/ProfilePage');
                        // Действие при нажатии кнопки
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(right: screenWidth/100)),
                          SvgPicture.asset(
                            'images/КорольЧ.svg',
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            //width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Профиль',
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),),
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Зайти в свой профиль', style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          )

                        ],
                      )
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned.fill(child:
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(106, 74, 25, 1.0)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                  ),
                )
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight/5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HistoryPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(right: screenWidth/100)),
                          SvgPicture.asset(
                            'images/КоньЧ.svg',
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            //width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('История',
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),),
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('История игр', style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          )

                        ],
                      )
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Positioned.fill(child:
                Container(
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(194, 184, 146, 1.0)
                  ),
                )
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight/5,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SettingsPage()),
                        );
                        // Действие при нажатии кнопки
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(right: screenWidth/100)),
                          SvgPicture.asset(
                            'images/ЛадьяЧ.svg',
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            //width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Настройки',
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),),
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text(
                                  'Настройки игры', style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),
                                // ElevatedButton(onPressed: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(builder: (context) => InitialPage()),
                                //   );
                                // }, child: Text('Временная кнопка'))
                              ],
                            ),
                          ),

                        ],
                      )
                  ),
                ),
              ],
            ),

            Stack(
              children: <Widget>[
                Positioned.fill(child:
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(106, 74, 25, 1.0)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      )
                  ),
                )
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight/5,
                  child: ElevatedButton(
                      onPressed: () {
                        // TODO Не знаю точно, но где-то читал, что на IOS может не срабоать
                        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                        // Действие при нажатии кнопки
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.transparent,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(right: screenWidth/100)),
                          SvgPicture.asset(
                            'images/СлонЧ.svg',
                            height: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            //width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Выйти',
                                  //textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 40,
                                    color: Colors.white,
                                  ),),
                                Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                                const Text('Выйти из игры', style: TextStyle(
                                  fontFamily: 'Comfortaa',
                                  fontSize: 18,
                                  color: Colors.white,
                                ),),
                              ],
                            ),
                          )
                        ],
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      )





      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children:[
      //         const Text('PLAY CHESS', style: TextStyle(
      //           fontFamily: 'ShantellSans',
      //           fontSize: 50,
      //           color: Colors.black,
      //         ),),
      //         TextButton(
      //           onPressed: (){
      //
      //         },
      //           style: TextButton.styleFrom(
      //             //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //             fixedSize: const Size(320.0, 80.0),
      //           ),
      //           child: const Text(
      //             textAlign: TextAlign.right,
      //             'Новая игра',
      //             style: TextStyle(
      //               fontFamily: 'ShantellSans',
      //               fontSize: 50,
      //               color: Colors.black,
      //         ),),
      //         ),
      //         Padding(padding: EdgeInsets.only(top: 10)),
      //         TextButton(
      //           onPressed: (){
      //
      //           },
      //           style: TextButton.styleFrom(
      //               //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //               fixedSize: const Size(320.0, 80.0),
      //           ),
      //           child: const Text(
      //             'История игр',
      //             style: TextStyle(
      //               fontFamily: 'ShantellSans',
      //               fontSize: 50,
      //               color: Colors.black,
      //             ),),
      //         ),
      //         Padding(padding: EdgeInsets.only(top: 10)),
      //         TextButton(
      //           onPressed: (){
      //
      //           },
      //           style: TextButton.styleFrom(
      //               //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //               fixedSize: const Size(320.0, 80.0),
      //           ),
      //           child: const Text(
      //             textAlign: TextAlign.left,
      //             'Рейтинг',
      //             style: TextStyle(
      //               fontFamily: 'ShantellSans',
      //               fontSize: 50,
      //               color: Colors.black,
      //             ),),
      //         ),
      //         Padding(padding: EdgeInsets.only(top: 10)),
      //         TextButton(
      //           onPressed: (){
      //
      //           },
      //           style: TextButton.styleFrom(
      //               //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //               fixedSize: const Size(320.0, 80.0),
      //           ),
      //           child: const Text(
      //             'Профиль',
      //             style: TextStyle(
      //               fontFamily: 'ShantellSans',
      //               fontSize: 50,
      //               color: Colors.black,
      //             ),),
      //         ),
      //         Padding(padding: EdgeInsets.only(top: 10)),
      //         TextButton(
      //           onPressed: (){
      //
      //           },
      //           style: TextButton.styleFrom(
      //               //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //               fixedSize: const Size(320.0, 80.0),
      //           ),
      //           child: const Text(
      //             'Настройки',
      //             style: TextStyle(
      //               fontFamily: 'ShantellSans',
      //               fontSize: 50,
      //               color: Colors.black,
      //             ),),
      //         ),
      //       ],
      //     ),
      //     // Column(
      //     //   mainAxisAlignment: MainAxisAlignment.start,
      //     //   children: [
      //     //     Padding(padding: EdgeInsets.only(top: 20)),
      //     //     TextButton.icon(
      //     //       onPressed: (){
      //     //
      //     //       },
      //     //       style: TextButton.styleFrom(
      //     //         //backgroundColor: Color.fromRGBO(201, 124, 36, 1.0),
      //     //         fixedSize: const Size(50.0, 20.0),
      //     //       ),
      //     //       icon: Icon(Icons.delete),
      //     //       label: const Text(
      //     //         '',
      //     //         style: TextStyle(
      //     //           fontFamily: 'ShantellSans',
      //     //           fontSize: 10,
      //     //           color: Colors.black,
      //     //         ),),
      //     //     ),
      //     //   ],
      //     // )
      //   ],
      // ),
      //floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.person)),
    );
  }
}
