import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sing_up_controller.dart';

class SingUpPage extends StatelessWidget {
  SingUpController control = Get.put(SingUpController());

  Widget _buildBody(BuildContext context){
    return SafeArea(child: Text('Crear Cuenta'));
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
