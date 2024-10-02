import 'package:flutter/material.dart';
import '../configs/colors.dart';

class Tag extends StatelessWidget {
  final String text;
  final Color color;

  //Constructor del Widget "TAG" que recibe el texto
  const Tag({
    Key? key,
    required this.text,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 10),
        decoration: BoxDecoration(
            //Para decorar el borde del conteiner
            color: AppColors.primaryColor, //background color
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: const Color.fromARGB(255, 0, 0, 0), //color del borde
              width: 2, //tamaño del borde
            )),
        child: Text(
          text,
          style: TextStyle(color: color, fontWeight: FontWeight.bold),
        ));
  }
}
