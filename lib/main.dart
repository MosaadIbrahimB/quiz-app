import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:task7/widget/answer_btn_widget.dart';
import 'package:task7/widget/back_ground_question_widget.dart';
import 'package:task7/widget/btn_next_widget.dart';
import 'package:task7/widget/circle_avatar_cut_contWidget.dart';
import 'package:task7/widget/container_cack_question_widget.dart';
import 'model/list_question.dart';
import 'model/quesion_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  int selected = -1;
  int isTrue = -2;
  String text = "";
  List<Question> listQuestion = ListQuestionModel.qList;
  double resulte = 0;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var hCQuestion = h * .13;
    print(selected);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: w * .1),
            const Center(
              child: Text("Simple Quiz App",
                  style: TextStyle(
                      color: Colors.white, fontSize: 30, fontFamily: "Asimov")),
            ),
            SizedBox(height: w * .1),
            Text(
              "Question ${1 + currentIndex} / ${ListQuestionModel.qList.length}",
              style: const TextStyle(
                  color: Colors.white, fontSize: 26, fontFamily: "Asimov"),
            ),
            SizedBox(height: w * .15),
            backGroundQWidget(hCQuestion, w,currentIndex),
            SizedBox(height: w * .04),
//answer
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (int i = 0;
                    i < listQuestion[currentIndex].answerList!.length;
                    i++)
                  answerWidget(
                      currentIndex: currentIndex,
                      select: i,
                      width: w,
                      height: h),
              ],
            ),
            const SizedBox(height: 15),
            BtnNextWidget(
              height: h,
              currentIndex: currentIndex,
              onPress: nextQuestion,
              listQuestion: listQuestion,
            )
          ],
        ),
      ),
    );
  }

  answerWidget(
      {int currentIndex = 0,
      int select = 0,
      double width = 0,
      double height = 0}) {
    return InkWell(
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        bool? trueAnswer =
            listQuestion[currentIndex].answerList?[select].isTrue;

        setState(() {
          selected = select;
        });
        if (trueAnswer != null) {
          setState(() {
            trueAnswer ? isTrue = selected : isTrue = -1;
          });
        }
        print("trueAnswer $trueAnswer");
        print("isTrue $isTrue");
      },
      child: AnswerBtnWidget(
        text: "${listQuestion[currentIndex].answerList?[select].answer}",
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

  showAlert() {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) => AlertDialog(
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
              setState(() {
                currentIndex = 0;
                selected = -1;
                isTrue = -2;
                resulte = 0;
              });

              print("object");
            },
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(12)),
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.symmetric(horizontal: 50),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: const Text(
                  "Restart",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                )),
          )
        ],
        content: Text(
          resulte >= ListQuestionModel.qList.length * .5
              ? "Passed | Score is $resulte"
              : "Failed | Score is $resulte",
          style: TextStyle(
              fontSize: 24,
              color: resulte >= ListQuestionModel.qList.length * .5
                  ? Colors.green
                  : Colors.red),
        ),
      ),
    );
  }


  nextQuestion() {
    if (currentIndex == listQuestion.length - 1) {
      if (isTrue == selected) {
        setState(() {
          resulte++;
        });
      }
      print("resulte $resulte");
      showAlert();
      return;
    } else {
      if (isTrue == selected) {
        setState(() {
          resulte++;
        });
      }
      setState(
        () {
          currentIndex++;
        },
      );
      selected = -1;
      isTrue = -2;
    }
  }
}

