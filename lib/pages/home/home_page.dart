
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/courses_card.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomeController control = Get.put(HomeController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(child: Text('Templage Page'));
  }

  @override
  Widget build(BuildContext context) {
    control.listarSecciones();
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text('Mis cursos',
                    style: TextStyle(
                      fontSize: 23, //Tamaño de letra
                      fontWeight: FontWeight.w800, //Negrita
                    )),
                CoursesCard(
                  cursonombre: 'Ingeniería de datos',
                  estadocurso: 'Finalizado',
                  tagtext: 'Critico',
                  tagcolor: Color.fromARGB(255, 113, 13, 243),
                  docente: 'Pepe Valdivia',
                  image:
                      'https://fotos.perfil.com/2021/03/08/0308husky-1138538.jpg',
                ),
                CoursesCard(
                  cursonombre: 'Literatura',
                  estadocurso: 'En curso',
                  tagtext: 'Creeper',
                  tagcolor: Color.fromARGB(255, 100, 247, 3),
                  docente: 'Joako creeper',
                  image:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbGeXe_SWRXu1Azl71YqRHEjIa6KgjkpI1fw&s',
                )
              ],
            ))
        //
        );
  }
}
