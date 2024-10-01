import 'dart:convert';

import 'package:aula2/models/seccion_docente_cursos.dart';
import 'package:aula2/models/usuario.dart';
import 'package:flutter/services.dart';

class UsuarioServices {
  Future<Usuario?> login(String usuario, String contrasenia) async {
    if(usuario == 'admin' && contrasenia == '123'){
      return Usuario(idUsuario: 10, correo: 'pepe@ulima.edu.pe');
    }else{
      return null;
    }
  }
}
