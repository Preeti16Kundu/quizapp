// ignore_for_file: prefer_final_fields, unnecessary_this, prefer_typing_uninitialized_variables, avoid_print, prefer_const_constructors, avoid_single_cascade_in_expression_statements

import 'package:flutter/widgets.dart';
import 'package:myfinalproject/question.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:myfinalproject/score_page.dart';

class QuestionAction extends GetxController {
  PageController _pageController = PageController();
  PageController get pageController => this._pageController;

  List<Question> _questionBank = sample_data
      .map(
        (question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer']),
      )
      .toList();

  List<Question> get questionBank => this._questionBank;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  var _correctAns;
  int get correctAns => this._correctAns;

  var _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;


// called immediately after the widget is allocated memory
  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

//called just before controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    // because once user press any option then it will run
    //print("welcome to Question Action page:");
    //print("$selectedIndex");
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    update();
    //once user select an answer, after 2 sec it will go to the next question
    Future.delayed(Duration(seconds: 2), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questionBank.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);
    } else {

    //go to the result page
      Get.to(ScorePage());
    }
  }

  void updateQueNumber(int index) {
    _questionNumber.value = index + 1;
  }
}
