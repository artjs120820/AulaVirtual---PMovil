import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:aula2/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/courses_card.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  HomeController control = Get.put(HomeController());
  Widget _buildBody(BuildContext context, Usuario usuario) {
    return SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text('Mis cursos ${usuario.correo} - ${usuario.idUsuario}',
                    style: TextStyle(
                      fontSize: 23, //Tamaño de letra
                      fontWeight: FontWeight.w800, //Negrita
                    )),
                Obx(() {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: control.secciones.value.length,
                      itemBuilder: (context, index) {
                        SeccionDocenteCursos seccion =
                            control.secciones.value[index];
                        print(seccion);
                        return CoursesCard(
                          cursonombre: seccion.cursoNombre,
                          estadocurso: 'Activo',
                          tagtext: seccion.diploma,
                          codecurso: seccion.seccionCodigo.toString(),
                          //tagcolor: Color.fromARGB(255, 100, 247, 3),
                          docente: seccion.docenteNombre,
                          image: seccion.cursoImagen,
                        );
                      });
                }),

                // CoursesCard(
                //   cursonombre: 'Ingeniería de datos',
                //   estadocurso: 'Finalizado',
                //   tagtext: 'Critico',
                //   tagcolor: Color.fromARGB(255, 113, 13, 243),
                //   docente: 'Pepe Valdivia',
                //   image:
                //       'https://fotos.perfil.com/2021/03/08/0308husky-1138538.jpg',
                // ),
                // CoursesCard(
                //   cursonombre: 'Literatura',
                //   estadocurso: 'En curso',
                //   tagtext: 'Creeper',
                //   tagcolor: Color.fromARGB(255, 100, 247, 3),
                //   docente: 'Joako creeper',
                //   image:
                //       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbGeXe_SWRXu1Azl71YqRHEjIa6KgjkpI1fw&s',
                // )
              ],
            ))
        //
        );
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Usuario usuario = Usuario.fromMap(args);
    control.listarSecciones();
    return _buildBody(context, usuario);
  }
}
