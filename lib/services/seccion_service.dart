import 'dart:convert';

import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:flutter/services.dart';

class SeccionService {
  Future<List<SeccionDocenteCursos>> fetchAll() async {
    List<SeccionDocenteCursos> secciones = [];
    final String response =
        await rootBundle.loadString("assets/json/secciones.json");
    final List<dynamic> data = jsonDecode(response);
    secciones = data
        .map((map) => SeccionDocenteCursos.fromMap(map as Map<String, dynamic>))
        .toList();
    // print(secciones);
    return secciones;
  }
}
