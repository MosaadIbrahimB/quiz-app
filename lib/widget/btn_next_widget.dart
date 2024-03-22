import 'package:flutter/material.dart';
import '../model/list_question.dart';
import '../model/quesion_model.dart';
import 'answer_btn_widget.dart';
class BtnNextWidget extends StatelessWidget {
  int ?currentIndex;
  double ?height;
  VoidCallback ?onPress;
  List<Question> ?listQuestion;

  BtnNextWidget(
      {this.currentIndex, this.height, this.onPress, this.listQuestion});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPress,
      child: AnswerBtnWidget(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: height ,
        colorContainer: Colors.white,
        text: currentIndex != ListQuestionModel.qList.length - 1
            ? "N e x t"
            : "S u b m i t",
        alignment: Alignment.center,
        fontSize: 28,
      ),
    );
  }
}
