import 'package:flutter/material.dart';
import '../configs/colors.dart';
import 'package:aula2/components/tag.dart';

class CoursesCard extends StatelessWidget {
  final String image;
  final String cursonombre;
  final String estadocurso;
  final String tagtext;
  final Color tagcolor;
  final String docente;
  final String codecurso;

  //Constructor del Widget "TAG" que recibe el texto
  const CoursesCard({
    Key? key,
    required this.image,
    this.tagcolor = Colors.white,
    required this.cursonombre,
    required this.tagtext,
    required this.estadocurso,
    required this.docente,
    required this.codecurso,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Card(
            color: AppColors.backgroundColor,
            shadowColor: AppColors.secondaryColor,
            child: Column(children: [
              Image.network(image),
              Padding(
                  padding: EdgeInsets.only(
                      left: 10,
                      bottom: 20,
                      right: 10,
                      top: 20), //PADDING PERSONALIZADO
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(codecurso,
                          style: TextStyle(
                            color: AppColors.secondaryColor,
                          )),
                      Text(cursonombre,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(
                            estadocurso,
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Tag(text: tagtext, color: tagcolor)
                        ],
                      ),
                      Container(
                        height: 2.0,
                        color: Colors.grey,
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                      ),
                      Text(docente, style: TextStyle(color: Colors.black)),
                    ],
                  ))
            ])));
  }
}
