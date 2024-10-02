import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sing_in_controller.dart';
import '../../components/large_button.dart';

class SingInPage extends StatelessWidget {
  SingInController control = Get.put(SingInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text('Bienvenido Perrito',
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                TextField(
                  controller: control.txtUsuario,
                  decoration: InputDecoration(
                      labelText: 'Usuario',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  controller: control.txtContrasenia,
                  decoration: InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0)),
                ),
                Obx(() {
                  return (control.mensaje.value == '')
                      ? SizedBox(
                          height: 10,
                        )
                      : Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(control.mensaje.value,
                                style: TextStyle(
                                    color: (control.hayError.value)
                                        ? Colors.red
                                        : Colors.green)),
                          ],
                        );
                }),
                SizedBox(
                  height: 15,
                ),
                LargeButton(
                  title: 'Ingresar',
                  onPressed: () {
                    print('Ingresar presionando');
                    control.goHome(context);
                  },
                  textColor: const Color.fromARGB(255, 247, 93, 54),
                  backgroundColor: const Color.fromARGB(255, 241, 151, 211),
                  borderRadius: BorderRadius.circular(35),
                ),
                LargeButton(
                  title: 'Crear cuenta',
                  onPressed: () {
                    print('Crear cuenta');
                  },
                  textColor: const Color.fromARGB(255, 0, 0, 0),
                  backgroundColor: const Color.fromARGB(255, 252, 16, 114),
                ),
                LargeButton(
                  title: 'Recuperar contraseña',
                  onPressed: () {
                    print('Ingresando a recuperar contraseña');
                  },
                  textColor: const Color.fromARGB(255, 14, 238, 62),
                  backgroundColor: const Color.fromARGB(255, 180, 228, 240),
                ),
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: null,
      body: _buildBody(context),
    ));
  }
}
