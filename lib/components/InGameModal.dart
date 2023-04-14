import 'package:flutter/material.dart';

class InGameModal extends StatelessWidget {
  const InGameModal({Key? key}) : super(key: key);

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
                  onPressed: (){},
                  child: Text(
                    'Сдаться',
                    style: TextStyle(
                        fontSize: 20)
                  ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 74, 25, 1.0),
                ),
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text(
                    'Предложить ничью',
                    style: TextStyle(
                        fontSize: 20)
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(106, 74, 25, 1.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
