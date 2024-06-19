import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback onPressed;
  final Icon? icon;

  const GradientButton({super.key, 
    this.buttonText,
    required this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: const LinearGradient(
            colors: [Colors.red, Colors.cyan],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: onPressed,
          child: chooseWidget(),
        ),
      ),
    );
  }

  StatelessWidget? chooseWidget() {
    return icon != null ? icon! : buttonText != null ? Text(buttonText!) : null;
  }
}