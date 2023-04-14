// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:myfinalproject/option_page.dart';
import 'package:myfinalproject/question.dart';
import 'package:myfinalproject/question_action.dart';
import 'package:get/get.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionAction _questionAction = Get.put(QuestionAction());
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          ...List.generate(
              question.options.length,
              (index) => OptionPage(
                    index: index,
                    text: question.options[index],
                    press: () => _questionAction.checkAns(question, index),
                  ))
        ],
      ),
    );
  }
}
