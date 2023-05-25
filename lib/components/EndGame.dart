import 'package:flutter/material.dart';
import 'package:play_chess/pages/StartPage.dart';

class EndGameModal extends StatelessWidget {
  const EndGameModal({Key? key}) : super(key: key);

  void _goStart(BuildContext context) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => StartPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black.withOpacity(0.5), // установка прозрачности на 20%
      child: Positioned(
        left: 0,
        top: 0,
        right: 0,
        bottom: 0,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15, // установка высоты модального окна на 80% от высоты экрана
          width: MediaQuery.of(context).size.width, // установка ширины модального окна на всю ширину экрана
          decoration: BoxDecoration(
            color: Color.fromRGBO(48, 48, 48, 1.0),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => _goStart(context),
                  child: Text(
                    'Игра окончена',
                    style: TextStyle(
                        fontSize: 20)
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 74, 25, 1.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
