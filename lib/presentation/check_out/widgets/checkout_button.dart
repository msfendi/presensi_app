import 'package:flutter/material.dart';

class CheckoutButton extends StatefulWidget {
  final Function onTap;
  const CheckoutButton({super.key, required this.onTap});

  @override
  State<CheckoutButton> createState() => _CheckoutButtonState();
}

class _CheckoutButtonState extends State<CheckoutButton> {
  double _scale = 1.0;
  double _shadowOpacity = 0.2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _scale = 0.9;
          _shadowOpacity = 0.4;
        });
      },
      onTapUp: (_) {
        setState(() {
          _scale = 1.0;
          _shadowOpacity = 0.2;
        });
      },
      onTapCancel: () {
        setState(() {
          _scale = 1.0;
          _shadowOpacity = 0.2;
        });
      },
      onTap: () => widget.onTap(),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        width: 120 * _scale,
        height: 120 * _scale,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey[900],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 12,
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.touch_app,
                size: 50 * _scale,
                color: Colors.white,
              ),
              SizedBox(height: 5),
              Text(
                "CHECK-OUT",
                style: TextStyle(
                  fontSize: 16 * _scale,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
