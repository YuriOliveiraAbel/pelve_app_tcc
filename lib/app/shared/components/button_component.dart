import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final Color color;
  final Function()? onTap;
  final double? heigth;
  final String text;
  const ButtonComponent({
    Key? key,
    required this.color,
    this.onTap,
    this.heigth = 100,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      onPressed: onTap,
      height: heigth,
      color: color,
      minWidth: double.maxFinite,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Color(0xFF636B76),
        ),
      ),
    );
  }
}
