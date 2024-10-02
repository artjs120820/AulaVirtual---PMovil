import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

import 'package:aula2/models/usuario.dart';


class UsuarioServices {
  Future<Usuario?> login(String usuario, String contrasenia) async {
    if(usuario == 'admin' && contrasenia == '123'){
      return Usuario(idUsuario: 10, correo: 'pepe@ulima.edu.pe');
    }else{
      return null;
    }
  }
}
