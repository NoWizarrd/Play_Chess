import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_chess/pages/GameOneOnOnePage.dart';


class GameModesPage extends StatefulWidget {
  const GameModesPage({Key? key}) : super(key: key);

  @override
  State<GameModesPage> createState() => _GameModesPageState();
}

class _GameModesPageState extends State<GameModesPage> {

  @override

  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    void _goToLocalGame(BuildContext context) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => GaneOneOnOnePage()));
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('images/background_board.png',
              width: screenWidth,
              height: screenHeight,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: screenHeight/70)),
                Text('ВЫБОР РЕЖИМА',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontSize: 42,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:screenHeight/7)),
                SizedBox(
                  width: screenWidth,
                  height: screenHeight/7,
                  child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                      side: BorderSide(color: Color.fromRGBO(194, 184, 146, 1.0),width: 1)
                    ),
                    child:
                    const Text('ОНЛАЙН',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 42,
                        color: Colors.white,
                      ),
                    ),
                  )
                ),
                Padding(padding: EdgeInsets.only(top: 60)),
                SizedBox(
                    width: screenWidth,
                    height: screenHeight/7,
                    child: ElevatedButton(onPressed: () => _goToLocalGame(context),
                      child:
                      Text('ЛОКАЛЬНО',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                          side: BorderSide(color: Color.fromRGBO(194, 184, 146, 1.0),width: 1)
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.only(top: 60)),
                SizedBox(
                    width: screenWidth,
                    height: screenHeight/7,
                    child: ElevatedButton(onPressed: (){},
                      child:
                      const Text('С БОТОМ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 42,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
                          side: BorderSide(color: Color.fromRGBO(194, 184, 146, 1.0),width: 1)
                      ),
                    )
                ),
                // Padding(padding: EdgeInsets.only(top: 60)),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     SizedBox(
                //       height: screenHeight/10,
                //       width: screenHeight/10,
                //       child:
                //       ElevatedButton(
                //         onPressed: (){
                //           Navigator.pushReplacementNamed(context, '/StartPage');
                //
                //         },
                //         child: SvgPicture.asset(
                //           'images/icon_for_button_go_back.svg',
                //           height: 40,
                //           color: Colors.white,),
                //         style: ElevatedButton.styleFrom(
                //           backgroundColor: Colors.transparent,
                //             shape: CircleBorder(),
                //             side: BorderSide(color: Colors.white,width: 1)
                //         ),
                //       ),
                //     ),
                //     Padding(padding: EdgeInsets.only(right:screenWidth/15)),
                //   ],
                // )
              ],
            )
          ],
        ),
      )
      // Image.asset('images/background_board.png',
      // height: screenHeight,
      // //width: screenWidth,
      // )
      // SafeArea(
      //   child: Stack(
      //     children: [
      //       Container(
      //         height: screenHeight,
      //         width: screenWidth,
      //         decoration: const BoxDecoration(image: DecorationImage(
      //             image: AssetImage('images/background_board.svg'.svg),
      //             //fit: BoxFit.cover
      //         )),
      //       ),
      //       Column(
      //         children: [
      //
      //         ],
      //       )
      //       // ...другие виджеты
      //     ],
      //   ),
      //   )
    );
  }
}