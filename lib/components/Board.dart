import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Board extends StatefulWidget {
  const Board({Key? key}) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}


class _BoardState extends State<Board> {
  List<String> _chessboard = List.generate(64, (index) => '');

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return Scaffold(
      body: Center(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: _chessboard.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 8,
            childAspectRatio: 1,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final row = index ~/ 8;
            final col = index % 8;
            final color = (row + col) % 2 == 0 ? Color.fromRGBO(106, 74, 25, 1) : Color.fromRGBO(194, 184, 146, 1);
            return Container(
              color: color,
              child: Center(
                child: SizedBox(), // фигуры
              ),
            );
          },
        ),
      ),
    );
  }
}
