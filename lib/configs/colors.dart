import 'package:flutter/material.dart';

class AppColors {
  //si la primera letra va en mayuscula, el lenguaje lo entiende como una clase
  static const Color primaryColor = Color(0xFFFF7F2A);
  static const Color secondaryColor = Color(0xFF615049);
  static const Color textColor = Color(0xFF262F34);
  static const Color backgroundColor = Color(0xFFF1D3BC);

  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? secondaryColor
        : backgroundColor;
  }
  static Color getSecondaryColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? primaryColor
        : secondaryColor;
  }
  static Color getButtonText(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? textColor
        : Colors.white;
  }
}
