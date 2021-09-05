import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.tec,
    required this.text,
    required this.ico,
  }) : super(key: key);

  final String text;
  final IconData ico;
  final TextEditingController tec;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $text';
          }
          return null;
        },
        controller: tec,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.black),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
            icon: Icon(
              ico,
              color: Colors.green,
            ),
            labelText: text,
            hintText: "Enter $text"),
      ),
    );
  }
}
