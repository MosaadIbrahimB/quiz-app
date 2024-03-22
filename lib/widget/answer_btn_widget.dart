import 'package:flutter/material.dart';

class AnswerBtnWidget extends StatelessWidget {
  Color? colorContainer;
  Color? colorText;
  Color colorShadow;
  double? width;
  double? height;
  String text;
  AlignmentGeometry? alignment;
  EdgeInsetsGeometry? margin;
  double? fontSize;
  AnswerBtnWidget(
      {this.alignment = Alignment.centerLeft,
        this.fontSize = 16,
        this.colorShadow = Colors.grey,
        this.colorContainer,
        this.width,
        this.height,
        this.text = "",
        this.margin,
        this.colorText = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(15),
          color: colorContainer,
          boxShadow: [
            BoxShadow(
                color: colorShadow,
                offset: const Offset(0, 3),
                spreadRadius: 2,
                blurRadius: 1)
          ]),
      margin: margin,
      alignment: alignment,
      width: width,
      height: height! * .07,
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize, color: colorText, fontFamily: "Asimov"),
      ),
    );
  }
}
