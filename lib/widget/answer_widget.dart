import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/list_question.dart';
import 'answer_btn_widget.dart';

class AnswerWidget extends StatelessWidget {
  int currentIndex;
  int select;
  int selected;
  double width;
  double height;
  final  VoidCallback? onTap;


  AnswerWidget(
      {this.currentIndex = 0,
      this.select = -1,
      this.selected = -2,
      this.width = 0,
      this.height = 0,
       this.onTap,
      });




  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onTap!();
        // bool? trueAnswer = ListQuestionModel.qList[currentIndex].answerList?[select].isTrue;
        //
        // setState(() {
        //   selected = select;
        // });
        // if (trueAnswer != null) {
        //   setState(() {
        //     trueAnswer ? isTrue = selected : isTrue = -1;
        //   });
        // }
        // print("trueAnswer $trueAnswer");
        // print("isTrue $isTrue");
      },
      child: AnswerBtnWidget(
        text: "${ListQuestionModel.qList[currentIndex].answerList?[select].answer}",
        colorText: selected == select ? const Color(0xfffffbdd) : Colors.black,
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        colorContainer: selected == select
            ? const Color(0xffffa827)
            : const Color(0xffe0e0e0),
        colorShadow: selected != select ? Colors.grey : const Color(0xffe98902),
      ),
    );
  }
}

