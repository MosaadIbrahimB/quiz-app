// InkWell(
//   focusColor: Colors.transparent,
//   splashColor: Colors.transparent,
//   hoverColor: Colors.transparent,
//   highlightColor: Colors.transparent,
//   onTap: () {
//     bool? trueAnswer =
//         listQuestion[currentIndex].answerList?[0].isTrue;
//     setState(() {
//       selected = 0;
//     });
//
//     if (trueAnswer != null) {
//       setState(() {
//         trueAnswer ? isTrue = selected : isTrue = -1;
//       });
//     }
//     print("trueAnswer $trueAnswer");
//     print("isTrue $isTrue");
//   },
//   child: AnswerBtnWidget(
//     text: "${listQuestion[currentIndex].answerList?[0].answer}",
//     colorText:
//         selected == 0 ? const Color(0xfffffbdd) : Colors.black,
//     width: w,
//     height: h,
//     margin: EdgeInsets.symmetric(
//         horizontal: w * .1, vertical: h * .02),
//     colorContainer: selected == 0
//         ? const Color(0xffffa827)
//         : const Color(0xffe0e0e0),
//     colorShadow:
//         selected != 0 ? Colors.grey : const Color(0xffe98902),
//   ),
// ),
// InkWell(
//   focusColor: Colors.transparent,
//   splashColor: Colors.transparent,
//   hoverColor: Colors.transparent,
//   highlightColor: Colors.transparent,
//   onTap: () {
//     bool? trueAnswer =
//         listQuestion[currentIndex].answerList?[1].isTrue;
//
//     setState(() {
//       selected = 1;
//     });
//     if (trueAnswer != null) {
//       setState(() {
//         trueAnswer ? isTrue = selected : isTrue = -1;
//       });
//     }
//     print("trueAnswer $trueAnswer");
//     print("isTrue $isTrue");
//   },
//   child: AnswerBtnWidget(
//     text: "${listQuestion[currentIndex].answerList?[1].answer}",
//     colorText:
//         selected == 1 ? const Color(0xfffffbdd) : Colors.black,
//     width: w,
//     height: h,
//     margin: EdgeInsets.symmetric(
//         horizontal: w * .1, vertical: h * .02),
//     colorContainer: selected == 1
//         ? const Color(0xffffa827)
//         : const Color(0xffe0e0e0),
//     colorShadow:
//         selected != 1 ? Colors.grey : const Color(0xffe98902),
//   ),
// ),
// InkWell(
//   focusColor: Colors.transparent,
//   splashColor: Colors.transparent,
//   hoverColor: Colors.transparent,
//   highlightColor: Colors.transparent,
//   onTap: () {
//     bool? trueAnswer =
//         listQuestion[currentIndex].answerList?[2].isTrue;
//     setState(() {
//       selected = 2;
//     });
//     if (trueAnswer != null) {
//       setState(() {
//         trueAnswer ? isTrue = selected : isTrue = -1;
//       });
//     }
//     print("trueAnswer $trueAnswer");
//     print("isTrue $isTrue");
//   },
//   child: AnswerBtnWidget(
//     text: "${listQuestion[currentIndex].answerList?[2].answer}",
//     colorText:
//         selected == 2 ? const Color(0xfffffbdd) : Colors.black,
//     width: w,
//     height: h,
//     margin: EdgeInsets.symmetric(
//         horizontal: w * .1, vertical: h * .02),
//     colorContainer: selected == 2
//         ? const Color(0xffffa827)
//         : const Color(0xffe0e0e0),
//     colorShadow:
//         selected != 2 ? Colors.grey : const Color(0xffe98902),
//   ),
// ),
// InkWell(
//   focusColor: Colors.transparent,
//   splashColor: Colors.transparent,
//   hoverColor: Colors.transparent,
//   highlightColor: Colors.transparent,
//   onTap: () {
//     bool? trueAnswer =
//         listQuestion[currentIndex].answerList?[3].isTrue;
//
//     setState(() {
//       selected = 3;
//     });
//     if (trueAnswer != null) {
//       setState(() {
//         trueAnswer ? isTrue = selected : isTrue = -1;
//       });
//     }
//     print("trueAnswer $trueAnswer");
//     print("isTrue $isTrue");
//   },
//   child: AnswerBtnWidget(
//     text: "${listQuestion[currentIndex].answerList?[3].answer}",
//     colorText:
//         selected == 3 ? const Color(0xfffffbdd) : Colors.black,
//     width: w,
//     height: h,
//     margin: EdgeInsets.symmetric(
//         horizontal: w * .1, vertical: h * .02),
//     colorContainer: selected == 3
//         ? const Color(0xffffa827)
//         : const Color(0xffe0e0e0),
//     colorShadow:
//         selected != 3 ? Colors.grey : const Color(0xffe98902),
//   ),
// ),
// Stack(
//   alignment: Alignment.center,
//   clipBehavior: Clip.none,
//   children: [
//     ContainerBackQuestionWidget(hCQuestion: hCQuestion),
//     CircleAvatarCutContWidget(
//       top: hCQuestion * .2,
//       left: -38,
//       radius: hCQuestion * .3,
//     ),
//     CircleAvatarCutContWidget(
//         top: hCQuestion * .20, right: -38, radius: hCQuestion * .3),
//     CircleAvatarCutContWidget(
//       top: w * -.1,
//       right: w * .4,
//       backgroundColor: Colors.white,
//       radius: hCQuestion * .32,
//       child: const Icon(
//         Icons.check,
//         size: 50,
//         color: Colors.green,
//       ),
//     ),
//     Container(
//         padding: const EdgeInsets.only(left: 2),
//         width: w * .83,
//         // color: Colors.red,
//         child: Text(
//           DataModel.qList[currentIndex].question ?? "",
//           style: const TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//               fontFamily: "Asimov"),
//         )),
//   ],
// ),



// InkWell(
//   focusColor: Colors.transparent,
//   splashColor: Colors.transparent,
//   hoverColor: Colors.transparent,
//   highlightColor: Colors.transparent,
//   onTap: () {
//     if (currentIndex == listQuestion.length - 1) {
//       if (isTrue == selected) {
//         setState(() {
//           resulte++;
//         });
//       }
//       print("resulte $resulte");
//       showAlert();
//       return;
//     } else {
//
//       if (isTrue == selected) {
//         setState(() {
//           resulte++;
//         });
//       }
//       setState(
//         () {
//           currentIndex++;
//         },
//       );
//       selected = -1;
//       isTrue = -2;
//     }
//   },
//   child: AnswerBtnWidget(
//     margin: const EdgeInsets.symmetric(horizontal: 5),
//     height: h ,
//     colorContainer: Colors.white,
//     text: currentIndex != DataModel.qList.length - 1
//         ? "N e x t"
//         : "S u b m i t",
//     alignment: Alignment.center,
//     fontSize: 28,
//   ),
// ),