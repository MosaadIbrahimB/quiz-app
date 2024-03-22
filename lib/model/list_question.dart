import 'package:task7/model/quesion_model.dart';

import 'answer_model.dart';

class ListQuestionModel {
  static List<Question> qList = [
    Question(question: "1. What is Flutter primarily used for?", answerList: [
      Answer(answer: "A) Building web applications", isTrue: false),
      Answer(answer: "B) Creating native iOS apps", isTrue: false),
      Answer(answer: "C) Developing desktop applications", isTrue: false),
      Answer(  answer: "D) Building cross-platform mobile applications",
          isTrue: true)
    ],),
    Question(
        question:
        "2. Which programming language is primarily used to develop Flutter apps?",
        answerList: [
          Answer(answer: "A) Swift", isTrue: false),
          Answer(answer: "B) Java", isTrue: false),
          Answer(answer: "C) Dart", isTrue: true),
          Answer(answer: "D) Kotlin", isTrue: false),
        ]),
    Question(
        question:
            "3. What does the hot reload feature in Flutter allow developers to do? ",
        answerList: [
          Answer(answer: "A) Refresh the app's cache", isTrue: false),
          Answer(answer: "B) Update app data", isTrue: false),
          Answer(answer: "C) Quickly see changes made to code", isTrue: true),
          Answer(answer: "D) Reset the app's state", isTrue: false),
        ]),
    Question(
        question:
            "4. What does the hot reload feature in Flutter allow developers to do? ",
        answerList: [
          Answer(answer: "A) Refresh the app's cache", isTrue: false),
          Answer(answer: "B) Update app data", isTrue: false),
          Answer(answer: "C) Quickly see changes made to code", isTrue: true),
          Answer(answer: "D) Reset the app's state", isTrue: false),
        ]),
    Question(
        question:
            "5. What is the primary widget used for creating layouts in Flutter?",
        answerList: [
          Answer(answer: "A) Row", isTrue: false),
          Answer(answer: "B) Column", isTrue: false),
          Answer(answer: "C) Container", isTrue: true),
          Answer(answer: "D) Stack", isTrue: false),
        ]),
    Question(
        question:
            "6. Which tool is used for managing dependencies in Flutter projects?",
        answerList: [
          Answer(answer: "  A) npm", isTrue: false),
          Answer(answer: "B) Gradle", isTrue: false),
          Answer(answer: "C) CocoaPods", isTrue: false),
          Answer(answer: "D) pub", isTrue: true),
        ]),
  ];
}
