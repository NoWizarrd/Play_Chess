import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int sound = 10;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body:
      SafeArea(

        child:
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(106, 74, 25, 1.0)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Padding(padding: EdgeInsets.only(top: screenHeight/70)),
              Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(0, 0, 0, 1.0), Color.fromRGBO(106, 74, 25, 1.0)],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                    )
                ),
                width: screenWidth,
                height: screenHeight/10,
                child: Text('НАСТРОЙКИ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(194, 184, 146, 1.0)
                ),
                alignment: Alignment.centerLeft,
                width: screenWidth,
                height: screenHeight/7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(left: screenWidth/30)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Музыка',
                          //textAlign: TextAlign.left,
                          style: TextStyle(
                            fontFamily: 'Comfortaa',
                            fontSize: 40,
                            color: Colors.white,
                          ),),
                        Padding(padding: EdgeInsets.only(top: screenHeight/150)),
                        const Text('Уровень громкости музыки', style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 13,
                          color: Colors.white,
                        ),),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.zero,
                      width: screenWidth * 0.14,
                      child:
                      ElevatedButton(onPressed: (){
                        setState(() {
                          if (sound != 0) {
                            sound--;
                          }

                        });
                      }, child:
                      SvgPicture.asset(
                        'images/left_arrow.svg',
                        height: screenHeight * 0.06,
                        color: Colors.white,
                        width: screenWidth * 0.038,
                      ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,

                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.zero,
                      width: screenWidth * 0.1,
                      child: Text('${sound}',
                        //textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 40,
                          color: Colors.white,
                        ),),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.zero,
                      width: screenWidth * 0.14,
                      child:
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: (){
                          setState(() {
                            if (sound < 10) {
                              sound++;
                            }
                          });
                        }, child:
                      SvgPicture.asset(
                        'images/right arrow.svg',
                        height: screenHeight * 0.06,
                        color: Colors.white,
                      ),
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.center,
                    //   margin: EdgeInsets.zero,
                    //   width: screenWidth * 0.14,
                    //   child:
                    //   ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: Colors.transparent,
                    //       shadowColor: Colors.transparent,
                    //     ),
                    //     onPressed: (){
                    //       setState(() {
                    //         if (sound < 10) {
                    //           sound++;
                    //         }
                    //       });
                    //     }, child:
                    //   SvgPicture.asset(
                    //     'images/sound_off.svg',
                    //     height: screenHeight * 0.06,
                    //     color: Colors.white,
                    //   ),
                    //   ),
                    // )
                  ],
                )
              )
            ],
          ),
        )
      ),
    );
  }
}
