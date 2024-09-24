import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  void goHome(BuildContext context){
    print("Estoy en el controlador");
    Navigator.pushNamed(context, '/home');
  }
}