import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    List <List<String>> list = [['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Wizard','Засухерка'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Wizard','Засухерка'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Wizard','Засухерка'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Засухерка','Wizard'],['Победа','01:10:31','Wizard','Засухерка'],['Победа','01:10:31','Засухерка','Wizard'],];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Image.asset('images/background_board.png',
              width: screenWidth,
              height: screenHeight,
            ),
            Container(
              margin: EdgeInsets.only(top: screenHeight/70),
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('ИСТОРИЯ ИГР',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Comfortaa',
                        fontSize: 42,
                        color: Colors.white,
                      ),),
                  ],
                ),
            ),
            const Padding(padding: EdgeInsets.only(top: 200)),
            Container(
              margin: EdgeInsets.only(top: screenHeight/10),
              child:
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext, int index)
                {
                  return ListTile(
                      minLeadingWidth: screenWidth,
                      contentPadding: EdgeInsets.zero,
                      title: Container(
                        height: screenHeight/6,
                        width: screenWidth,
                        margin: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(194, 184, 146, 1.0),
                            width: 1.0,
                          ),
                          color: const Color.fromRGBO(0, 0, 0, 0.5),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            // TODO [Результат, время, ник белого игра, ник чёрного игрока]
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SvgPicture.asset(
                                //   'images/Player.svg',
                                //   height: 30,
                                //   color: Colors.white,
                                // ),
                                Container(
                                  alignment: Alignment.topRight, //определиться с выравниванием
                                  width: screenWidth * 0.43,
                                  child: Text(
                                      '${list[index][2]}',
                                      style: TextStyle(
                                        fontFamily: 'Comfortaa',
                                        fontSize: 20,
                                        color: Colors.white,
                                      )
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: screenWidth * 0.1,
                                  child: SvgPicture.asset(
                                    'images/VS_for_history.svg',
                                    height: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.topLeft, //определиться с выравниванием
                                  width: screenWidth * 0.43,
                                  child: Text(
                                      ' ${list[index][3]}',
                                      style:TextStyle(
                                        fontFamily: 'Comfortaa',
                                        fontSize: 20,
                                        color: Colors.white,
                                      )
                                  ),
                                ),

                                //Padding(padding: EdgeInsets.only(right: screenWidth/20))
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            Text(
                              list[index][0],
                              textAlign:
                              TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 38,
                                color: Colors.white,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            Text(
                              list[index][1],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Comfortaa',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                  );
                },
              ),
            )
          ],
        )
      ),
    );
  }
}
