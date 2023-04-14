// ignore_for_file: avoid_print, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:myfinalproject/quiz_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: const Text(
            " My Quiz App",
            style: TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/quiztiime.jpg',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome! Let's Play",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                TextField(
                  controller: _textController,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(30),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter your name",
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      onPrimary: Colors.white,
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      textStyle: TextStyle(fontSize: 25),
                      minimumSize: Size(150, 48),
                    ),
                    onPressed: () {
                      //print("Go to Quiz Screen");
                      print("Hello ${_textController.text}");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => QuizScreen()));
                    },
                    child: Text(
                      "Start Quiz",
                    ),
                  ),
                ),
              ],
            )));
  }
}
