import 'package:flutter/material.dart';

class TextfieldForm extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  const TextfieldForm(
      {super.key,
      required this.controller,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(icon),
          labelText: label,
        ),
      ),
    );
  }
}
