// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myfinalproject/question_action.dart';
//import 'package:get/state_manager.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionAction _questionAction = Get.put(QuestionAction());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text(
            "Result",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Spacer(flex: 2),
              Center(
                child: Text(
                  "Final Score:",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "${_questionAction.numOfCorrectAns}/${_questionAction.questionBank.length}",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Spacer(
                flex: 3,
              ),
              Text(
                "ThankYou!",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(flex: 3),
            ],
          ),
        ));
  }
}
