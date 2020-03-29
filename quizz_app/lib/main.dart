import 'package:flutter/material.dart';

import 'source_file/loginPage.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: LoginPage()//SignUpPage(),
    );
  }
}
