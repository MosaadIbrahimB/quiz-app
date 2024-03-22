import 'package:flutter/material.dart';

import '../model/list_question.dart';
import 'circle_avatar_cut_contWidget.dart';
import 'container_cack_question_widget.dart';

backGroundQWidget(double hCQuestion, double w,int currentIndex) {

  return Stack(
    alignment: Alignment.center,
    clipBehavior: Clip.none,
    children: [
      ContainerBackQuestionWidget(hCQuestion: hCQuestion),
      CircleAvatarCutContWidget(
        top: hCQuestion * .2,
        left: -38,
        radius: hCQuestion * .3,
      ),
      CircleAvatarCutContWidget(
          top: hCQuestion * .20, right: -38, radius: hCQuestion * .3),
      CircleAvatarCutContWidget(
        top: w * -.1,
        right: w * .4,
        backgroundColor: Colors.white,
        radius: hCQuestion * .32,
        child: const Icon(
          Icons.check,
          size: 50,
          color: Colors.green,
        ),
      ),
      Container(
          padding: const EdgeInsets.only(left: 2),
          width: w * .83,
          // color: Colors.red,
          child: Text(
            ListQuestionModel.qList[currentIndex].question ?? "",
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Asimov"),
          )),
    ],
  );
}
