import 'package:aula2/models/usuario.dart';
import 'package:aula2/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  TextEditingController txtUsuario = TextEditingController();
  TextEditingController txtContrasenia = TextEditingController();
  RxString mensaje = ''.obs;
  RxBool hayError = false.obs;
  void goHome(BuildContext context) async {
    print("Estoy en el controlador");
    UsuarioServices service = UsuarioServices();
    Usuario? usuario =
        await service.login(txtUsuario.text, txtContrasenia.text);
    if (txtUsuario.text == '' || txtContrasenia.text == '') {
      this.mensaje.value = 'Error: debe llenar las casillas';
      this.hayError.value = true;
      Future.delayed(Duration(seconds: 3), () {
        this.mensaje.value = '';
      });
    } else if (usuario != null) {
      print(usuario);
      this.mensaje.value = 'Success: Usuario y contraseña válidos';
      this.hayError.value = false;
      Future.delayed(Duration(seconds: 3), () {
        Navigator.pushNamed(context, '/home', arguments: usuario.toJson());
      });
    } else {
      this.hayError.value = true;
      this.mensaje.value = 'Error: no coincideeee';
      Future.delayed(Duration(seconds: 3), () {
        this.mensaje.value = '';
      });
    }
  }
}
