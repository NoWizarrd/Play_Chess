import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_chess/models/piece/Pieces.dart';

class Position
{
  List <Piece> pieces = [King('Белый Король', 5, Colors.white)];
  List ruleFigure(int key)
  {
    List list = [];
    for (Piece element in pieces) {
      if (key == element.position){
        list = element.rule();
      }
    }
    return list;
  }
  Piece whatPiece(int key)
  {
    Piece piece = King('null', 555, Colors.white);
    for (Piece element in pieces) {
      if (key == element.position){
        piece = element;
      }
    }
    return piece;
  }
  SvgPicture isPosition(int key){
    String image = 'images/piece_null.svg';
    Color color = Colors.transparent;
    for (Piece element in pieces) {
      if (key == element.position){
        color = element.color;
        image = element.image;
      }
    }
    return SvgPicture.asset(
        image,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        fit: BoxFit.cover
    );

  }
  void newPosition(Piece piece, int key)
  {
    for (Piece element in pieces)
      {
        if (piece == element)
          {
            element.position = key;
          }
      }
  }
  SvgPicture nullImage(){
    return SvgPicture.asset(
        'images/piece_null.svg',
        colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.srcIn),
        fit: BoxFit.cover
    );
  }
}