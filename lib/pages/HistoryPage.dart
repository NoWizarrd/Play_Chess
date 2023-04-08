

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
    List <List<String>> list = [['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka'],];
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
                          children: [
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'images/Player.svg',
                                  height: 30,
                                  color: Colors.white,
                                ),
                                Text(
                                    ': ${list[index][2]}',
                                    style: TextStyle(
                                      fontFamily: 'Comfortaa',
                                      fontSize: 25,
                                      color: Colors.white,
                                    )
                                ),
                                Padding(padding: EdgeInsets.only(right: screenWidth/20))
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  list[index][0],
                                  textAlign:
                                  TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 38,
                                    color: Colors.white,
                                  ),

                                )
                              ],
                            ),
                            Padding(padding: EdgeInsets.only(top: screenHeight/100)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  list[index][1],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
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
