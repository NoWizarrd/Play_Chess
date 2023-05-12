import 'package:flutter/material.dart';
import 'package:play_chess/controllers/Positions.dart';
import 'package:play_chess/models/piece/Pieces.dart';

class Board
{
  int buttonKey = 0;
  Position positions = Position();
  Piece nowPiece = King('null', 555, Colors.white);
  List<Color> colors1 = [];
  List colors2 = [];
  List childImages = [];


  int buildBoard(int index)
  {
    buttonKey++;
    final row = index ~/ 8;
    final col = index % 8;
    Color color = (row + col) % 2 == 0 ? Color.fromRGBO(194, 184, 146, 1) : Color.fromRGBO(106, 74, 25, 1.0);
    colors1.add(color);
    colors2.add(color);
    childImages.add(positions.isPosition(buttonKey));
    return buttonKey;
  }

  void clickButton(int key)
  {
    if ((nowPiece.name != 'null'))
    {
      if (colors1[key - 1] == Colors.red)
      {
        childImages[nowPiece.position - 1] = positions.nullImage();
        positions.newPosition(nowPiece, key, childImages);
        childImages[key - 1] = positions.isPosition(key);
      }
      for (int key = 1; key < 65; key++)
      {
        colors1[key-1] = colors2[key-1];
      }
      nowPiece = King('null', 555, Colors.white);
    }
    else
    {
      for (int key in positions.ruleFigure(key))
      {
        colors1[key-1] = Colors.red;
      }
      if (nowPiece != positions.whatPiece(key)) {
        nowPiece = positions.whatPiece(key);
        colors1[nowPiece.position - 1] = Colors.blue;
      }
    }
  }
}