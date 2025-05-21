import 'package:flutter/material.dart';

class CheckInButton extends StatefulWidget {
  final Function onTap;
  const CheckInButton({super.key, required this.onTap});

  @override
  State<CheckInButton> createState() => _CheckInButtonState();
}

class _CheckInButtonState extends State<CheckInButton> {
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
          gradient: const LinearGradient(
            colors: [Colors.deepPurple, Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(_shadowOpacity),
              spreadRadius: 10,
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.touch_app,
                size: 50,
                color: Colors.white,
              ),
              SizedBox(height: 5),
              Text(
                "CHECK-IN",
                style: TextStyle(
                  fontSize: 14,
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
