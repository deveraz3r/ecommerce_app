import 'package:flutter/material.dart';

class ReuseableElevatedbutton extends StatelessWidget {
  ReuseableElevatedbutton(
      {super.key, required this.buttonName, this.buttonOnPressed});

  final String buttonName;
  final VoidCallback? buttonOnPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: buttonOnPressed ?? () {},
      child: Text(buttonName),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
    );
  }
}
