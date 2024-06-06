import 'package:flutter/material.dart';

class cust_textfield extends StatelessWidget {
  const cust_textfield({
    super.key,
    required this.valucontroller,
  });

  final TextEditingController valucontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      child: TextField(
        controller: valucontroller,
        decoration: const InputDecoration(
            border: InputBorder.none,
            fillColor: Color.fromARGB(255, 56, 52, 52),
            filled: true),
        style: const TextStyle(fontSize: 50),
        readOnly: true,
        showCursor: true,
        autofocus: true,
      ),
    );
  }
}
