import 'package:flutter/material.dart';
import '../configs/colors.dart';
import 'package:aula2/components/tag.dart';

class CoursesCard extends StatelessWidget {
  final String image;
  final String cursonombre;
  final String estadocurso;
  final String tagtext;
  final String docente;
  final String codecurso;
  final Color tagColor;

  //Constructor del Widget "TAG" que recibe el texto
  const CoursesCard({
    Key? key,
    required this.image,
    required this.cursonombre,
    required this.tagtext,
    required this.estadocurso,
    required this.docente,
    required this.codecurso,
    this.tagColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 30),
        child: Card(
            color: AppColors.getBackgroundColor(context),
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
                          Tag(
                              text: this.tagtext,
                              color: AppColors.getButtonText(context))
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
