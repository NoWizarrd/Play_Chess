import 'package:flutter/material.dart';

abstract class Piece{
  abstract String name;
  abstract int position;
  abstract String image;
  abstract Color color;
  Piece();
  List rule();
}


class King extends Piece{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Король.svg';
  @override
  Color color = Colors.black;
  King(this.name, this.position, this.color);
  @override
  List rule() {
    List keys = [];
    int min_line_position = (position/8).floor();
    int max_line_position = min_line_position + 7;
    if ((position != min_line_position) && (max_line_position != position))
      {

      }
    if ((position - 1) % 8 != 0)
    {
      keys.add(position - 1);
    }
    if (position % 8 != 0)
    {
      keys.add(position + 1);
    }
    if (position > 8)
    {
      keys.add(position - 8);
    }
    if (position < 57)
    {
      keys.add(position + 8);
    }
    return keys;
  }
}

class Queen extends Piece
{
  @override
  String name = '';
  @override
  int position = 1;
  @override
  String image = 'images/Ферзь.svg';
  @override
  Color color = Colors.black;
  Queen(this.name, this.position, this.color);
  List rule()
  {
    List keys = [];
    int temporaryPosition = position;
    while (temporaryPosition > 8)
    {
      temporaryPosition -= 8;
      keys.add(temporaryPosition);
    }
    while (temporaryPosition > 8)
    {
      temporaryPosition -= 8;
      keys.add(temporaryPosition);
    }
    return keys;
  }
}