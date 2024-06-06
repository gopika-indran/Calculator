import 'package:calculator_app/custom/cust_circleavathar.dart';
import 'package:calculator_app/custom/cust_equal.dart';
import 'package:calculator_app/custom/cust_textfield.dart';
import 'package:calculator_app/provider/cal_prov.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class calculationpage extends StatelessWidget {
  const calculationpage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 0.6;
    final screenWidth = MediaQuery.of(context).size.width;
    return Consumer<Calculatorpro>(builder: (context, provider, _) {
      return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              "CALCULATOR",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Column(
          children: [
            cust_textfield(valucontroller: provider.calcontroller),
            const Spacer(),
            Container(
              height: screenHeight,
              width: screenWidth,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 56, 52, 52),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => listbuttons[index]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => listbuttons[index + 4]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                        List.generate(4, (index) => listbuttons[index + 8]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => listbuttons[index + 12]),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  3, (index) => listbuttons[index + 15]),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const cust_equal_button()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

List<Widget> listbuttons = [
  const cust_circleavathar(label: "C", textcolor: Colors.blue),
  const cust_circleavathar(label: "/", textcolor: Colors.blue),
  const cust_circleavathar(label: "X", textcolor: Colors.blue),
  const cust_circleavathar(label: "AC", textcolor: Colors.red),
  const cust_circleavathar(label: "7", textcolor: Colors.white),
  const cust_circleavathar(label: "8", textcolor: Colors.white),
  const cust_circleavathar(label: "9", textcolor: Colors.white),
  const cust_circleavathar(label: "-", textcolor: Colors.orange),
  const cust_circleavathar(label: "4", textcolor: Colors.white),
  const cust_circleavathar(label: "5", textcolor: Colors.white),
  const cust_circleavathar(label: "6", textcolor: Colors.white),
  const cust_circleavathar(label: "+", textcolor: Colors.orange),
  const cust_circleavathar(label: "1", textcolor: Colors.white),
  const cust_circleavathar(label: "2", textcolor: Colors.white),
  const cust_circleavathar(label: "3", textcolor: Colors.white),
  const cust_circleavathar(label: ".", textcolor: Colors.white),
  const cust_circleavathar(label: "0", textcolor: Colors.white),
  const cust_circleavathar(label: "%", textcolor: Colors.orange),
];
