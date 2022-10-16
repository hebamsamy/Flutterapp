import 'package:app/QuestionBank.dart';
import 'package:flutter/material.dart';

class ExamScreen extends StatefulWidget {
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  QuestionBank bank = QuestionBank();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.question_mark),
          title: Text(bank.getQuestion().text),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  CheckAnswer(true);
                },
                child: Text("True")),
            ElevatedButton(
                onPressed: () {
                  CheckAnswer(false);
                },
                child: Text("False")),
          ],
        ),
        Center(
          child: Text("Your Score is ${result.toString()}"),
        )
        // OutlinedButton(onPressed: () {}, child: Text("button")),
        // TextButton(onPressed: () {}, child: Text("button")),
        // IconButton(onPressed: () {}, icon: Icon(Icons.question_mark))
      ],
    );
  }

  CheckAnswer(bool ans) {
    if (ans == bank.getQuestion().answer) {
      setState(() {
        result++;
      });
    }

    setState(() {
      bank.move();
    });
    print(bank.getQuestion().text);
  }
}
