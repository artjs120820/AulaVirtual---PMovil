import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:aula2/services/seccion_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  SeccionService seccionService = SeccionService();
  var secciones = <SeccionDocenteCursos>[].obs;
  void listarSecciones() async {
    secciones.value = await seccionService.fetchAll();
  }


}