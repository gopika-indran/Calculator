import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Calculatorpro extends ChangeNotifier {
  final calcontroller = TextEditingController();

  pressValue(String value) {
    String str = calcontroller.text;
    switch (value) {
      case "C":
        calcontroller.clear();
        break;
      case "AC":
        calcontroller.text = str.substring(0, str.length - 1);
        break;
      case "X":
        calcontroller.text += "*";
        break;
      case "=":
        compute();
        break;
      default:
        calcontroller.text += value;
    }
  }

  compute() {
    String text = calcontroller.text;
    calcontroller.text = text.interpret().toString();
  }

  @override
  void dispose() {
    super.dispose();
    calcontroller.dispose();
  }
}
