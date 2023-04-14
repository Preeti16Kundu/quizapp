// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfinalproject/question_action.dart';
import 'package:myfinalproject/question_page.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    //To access our controller
    QuestionAction _questionAction = Get.put(QuestionAction());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  Obx(
                    () => Text.rich(TextSpan(
                      text: "Question ${_questionAction.questionNumber.value}",
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(
                          text: "/${_questionAction.questionBank.length}",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    )),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: PageView.builder(
                      //It blocks swipe to next Question
                      physics: NeverScrollableScrollPhysics(),
                      controller: _questionAction.pageController,
                      onPageChanged: _questionAction.updateQueNumber,
                      itemCount: _questionAction.questionBank.length,
                      itemBuilder: (BuildContext context, int index) =>
                          QuestionPage(
                        question: _questionAction.questionBank[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
