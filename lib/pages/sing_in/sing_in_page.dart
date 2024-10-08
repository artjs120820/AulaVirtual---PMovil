import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'sing_in_controller.dart';
import '../../components/large_button.dart';

class SingInPage extends StatelessWidget {
  SingInController control = Get.put(SingInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Theme.of(context).brightness == Brightness.dark
                    ? Image.asset('assets/img/splash_icon_dark.png')
                    : Image.asset('assets/img/splash_icon.png'),

                //EJEMPLO SVG
                // SvgPicture.asset(
                //   'assets/svg/logo.svg', // Ruta del SVG
                //   color: AppColors.getBackgroundColor(
                //       context), // Cambia el color aquí
                //   colorBlendMode: BlendMode
                //       .srcIn, // Asegúrate de que el color se aplique correctamente
                //   height: 100.0, // Opcional: altura del SVG
                //   width: 100.0, // Opcional: ancho del SVG
                // ),
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
            ))));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: null,
            body: Container(
              color: Theme.of(context).colorScheme.background,
              child: _buildBody(context),
            )));
  }
}
