import 'package:flutter/material.dart';

class ContainerBackQuestionWidget extends StatelessWidget {
  const ContainerBackQuestionWidget({
    super.key,
    required this.hCQuestion,
  });

  final double hCQuestion;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: hCQuestion,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(8)),
    );
  }
}
