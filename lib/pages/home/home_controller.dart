import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:aula2/services/seccion_service.dart';
import 'package:get/get.dart';

import '../../models/usuario.dart';

class HomeController extends GetxController {
  SeccionService seccionService = SeccionService();
  var secciones = <SeccionDocenteCursos>[].obs;
  var usuario = Usuario(idUsuario: 0, correo: '').obs;
  RxString subTitulo = ''.obs;
  void listarSecciones() async {
    secciones.value = await seccionService.fetchAll();
    //print(secciones.value);
  }

  void updateUsuario(Usuario u) {
    usuario.update((val) {
      val?.idUsuario = u.idUsuario;
      val?.correo = u.correo;
    });
  }
}
