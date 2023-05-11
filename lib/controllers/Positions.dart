import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_chess/models/piece/Pieces.dart';

class Position
{
  List <Piece> pieces = [Rook('Чёрная ладья', 8, Colors.black), Knight('Чёрный конь', 7, Colors.black),Bishop('Чёрный слон', 6, Colors.black),
    King('Чёрный Король', 5, Colors.black), Queen('Чёрный Ферзь', 4, Colors.black),Knight('Чёрный конь', 2, Colors.black),
    Bishop('Чёрный слон', 3, Colors.black), Rook('Чёрная ладья', 1, Colors.black), Pawn('Белая пешка', 9, Colors.black),
    Pawn('Белая пешка', 10, Colors.black), Pawn('Белая пешка', 11, Colors.black), Pawn('Белая пешка', 12, Colors.black), Pawn('Белая пешка', 13, Colors.black),
    Pawn('Чёрная пешка', 14, Colors.black), Pawn('Белая пешка', 15, Colors.black), Pawn('Белая пешка', 16, Colors.black),
    Rook('Белая ладья', 64, Colors.white), Knight('Белый конь', 63, Colors.white),Bishop('Белый слон', 62, Colors.white),
    King('Белый Король', 61, Colors.white), Queen('Белый Ферзь', 60, Colors.white),Knight('Белый конь', 58, Colors.white),
    Bishop('Белый слон', 59, Colors.white), Rook('Белая ладья', 57, Colors.white), Pawn('Белая пешка', 49, Colors.white),
    Pawn('Белая пешка', 56, Colors.white), Pawn('Белая пешка', 55, Colors.white), Pawn('Белая пешка', 54, Colors.white), Pawn('Белая пешка', 53, Colors.white),
    Pawn('Белая пешка', 52, Colors.white), Pawn('Белая пешка', 51, Colors.white), Pawn('Белая пешка', 50, Colors.white),
  ];
  List ruleFigure(int key)
  {
    List list = [];
    for (Piece element in pieces) {
      if (key == element.position){
        list = element.rule(pieces);
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