import 'package:flutter/material.dart';

class SnackbarMessage extends StatelessWidget {
  final IconData icon;
  final String message;
  const SnackbarMessage({super.key, required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            message,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
      backgroundColor: Colors.redAccent,
      shape: StadiumBorder(),
      behavior: SnackBarBehavior.floating,
    ));
    return const SizedBox();
  }
}
