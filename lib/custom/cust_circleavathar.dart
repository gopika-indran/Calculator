import 'package:calculator_app/provider/cal_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cust_circleavathar extends StatelessWidget {
  const cust_circleavathar(
      {super.key, required this.label, required this.textcolor});
  final String label;
  final textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<Calculatorpro>(context, listen: false).pressValue(label),
      child: Material(
        elevation: 3,
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 37,
          backgroundColor: const Color.fromARGB(255, 56, 52, 52),
          child: Text(
            label,
            style: TextStyle(
                color: textcolor, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
