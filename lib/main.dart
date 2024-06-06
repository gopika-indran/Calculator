import 'package:calculator_app/calculation_screen.dart';
import 'package:calculator_app/provider/cal_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Calculatorpro(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: calculationpage(),
      ),
    );
  }
}
