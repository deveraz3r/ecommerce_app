import 'package:flutter/material.dart';

class ReusableTextbutton extends StatefulWidget {
  const ReusableTextbutton(
      {super.key, required this.buttonName, this.buttonOnPressed});

  final String buttonName;
  final VoidCallback? buttonOnPressed;

  @override
  State<ReusableTextbutton> createState() => _ReusableTextbuttonState();
}

class _ReusableTextbuttonState extends State<ReusableTextbutton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.buttonOnPressed ?? () {},
      child: Text(
        widget.buttonName,
        style: TextStyle(
          color: Colors.green,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
