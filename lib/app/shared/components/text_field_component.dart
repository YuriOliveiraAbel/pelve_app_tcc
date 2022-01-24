import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldComponent extends StatelessWidget {
  final bool isErro;
  final TextEditingController controller;
  final Function(String) submit;
  final TextInputAction inputAction;
  final TextInputType keyBoardType;
  final String hintText;
  final String erroText;
  final Color? backgroundColor;
  final Icon? prefixIcon;
  final Color? hintColor;
  final Color? textColor;
  final bool obscureText;
  final double? heigth;
  final Color? cursorColor;
  final bool? enable;
  final double radius;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  TextFieldComponent({
    required this.isErro,
    required this.controller,
    required this.submit,
    required this.inputAction,
    required this.keyBoardType,
    required this.hintText,
    required this.erroText,
    this.backgroundColor = Colors.white,
    this.prefixIcon,
    required this.hintColor,
    required this.textColor,
    this.obscureText = false,
    this.heigth = 60,
    this.cursorColor = const Color(0xFF23BAFF),
    this.enable = true,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: heigth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            color: backgroundColor,
            border: Border.all(
              color: isErro ? Colors.red : Colors.transparent,
            ),
          ),
          child: Theme(
            data: ThemeData(
              primaryColor: Colors.black,
              hintColor: Colors.black,
            ),
            child: Center(
              child: TextField(
                enabled: enable,
                obscureText: obscureText,
                style: TextStyle(
                  fontSize: 16,
                  color: textColor,
                  height: 1.5,
                ),
                textAlignVertical: TextAlignVertical.center,
                textInputAction: inputAction,
                onSubmitted: submit,
                controller: controller,
                keyboardType: keyBoardType,
                cursorColor: cursorColor,
                decoration: InputDecoration(
                  isCollapsed: true,
                  prefixIcon: prefixIcon,
                  hintText: hintText,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: const EdgeInsets.only(left: 18),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: hintColor,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
          ),
        ),
        isErro
            ? Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  erroText,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red[900],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
