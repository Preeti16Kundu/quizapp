import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:myfinalproject/question_action.dart';

class OptionPage extends StatelessWidget {
  const OptionPage({
    Key? key,
    required this.index,
    required this.text,
    required this.press,
  }) : super(key: key);

  final int index;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionAction>(
        init: QuestionAction(),
        builder: (qnAction) {
          Color getTheRightColor() {
            if (qnAction.isAnswered) {
              if (index == qnAction.correctAns) {
                return Colors.green;
              } else if (index == qnAction.selectedAns &&
                  qnAction.selectedAns != qnAction.correctAns) {
                return Colors.red;
              }
            }
            return Colors.grey;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == Colors.red ? Icons.close : Icons.done;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: getTheRightColor()),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${index + 1}. $text",
                      style: TextStyle(
                        color: getTheRightColor(),
                        fontSize: 20,
                      )),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                      color: getTheRightColor() == Colors.grey
                          ? Colors.transparent
                          : getTheRightColor(),
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: getTheRightColor()),
                    ),
                    child: getTheRightColor() == Colors.grey
                        ? null
                        : Icon(getTheRightIcon(), size: 20),
                  )
                ],
              ),
            ),
          );
        });
  }
}
