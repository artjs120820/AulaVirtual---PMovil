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
                Text('Bienvenido Perrito'),
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
