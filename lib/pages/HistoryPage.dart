

import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    List list = [['Победа','01:10:31','Засухерка'],['Поражение','01:10:31','Zasuherka']];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(padding: EdgeInsets.only(top: screenHeight/70)),
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
                ListView.builder(itemCount: list.length,
                itemBuilder: (BuildContext, int index)
                  {
                    return Dismissible(key: Key(list[index]),
                    child: Card(
                      child: ListTile(
                        title: SizedBox(
                          height: screenHeight/10,
                          width: screenWidth,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(list[index][2]),
                                  Padding(padding: EdgeInsets.only(right: 20))
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(list[index][0], textAlign: TextAlign.center,)
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(list[index][1], textAlign: TextAlign.center,)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    );

                  },)
              ],
            ),
          ],
        )
      ),
    );
  }
}
