import 'package:calculator_app/provider/cal_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cust_equal_button extends StatelessWidget {
  const cust_equal_button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Provider.of<Calculatorpro>(context, listen: false).pressValue("="),
      child: Container(
        height: 160,
        width: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40), color: Colors.blue),
        child: const Center(
          child: Text(
            "=",
            style: TextStyle(
                color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
