import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Quiz', initialRoute: '/', routes: {
      '/': (context) => QuizOne(),
      '/quiz2': (context) => QuizTwo(),
      '/quiz3': (context) => QuizThree(),
      '/check': (context) => Answer(),
    });
  }
}

int score = 0;
String quiz1 = "";
String quiz2 = "";
String quiz3 = "";

class QuizOne extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<QuizOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz One (31011221031)"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
                'Who developed the Flutter Framework and continues to maintain it today?',
                style: TextStyle(fontSize: 18)),
            const Divider(),
            RadioListTile(
                title: const Text("Facebook"),
                value: "Facebook",
                groupValue: quiz1,
                onChanged: (value) {
                  setState(() {
                    quiz1 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Microsoft"),
                value: "Microsoft",
                groupValue: quiz1,
                onChanged: (value) {
                  setState(() {
                    quiz1 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Google"),
                value: "Google",
                groupValue: quiz1,
                onChanged: (value) {
                  setState(() {
                    quiz1 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text(" Oracle"),
                value: " Oracle",
                groupValue: quiz1,
                onChanged: (value) {
                  setState(() {
                    quiz1 = value.toString();
                  });
                }),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                if (quiz1 == "Google") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/quiz2');
              },
              child: const Text('Next >'),
            ),
            Text("You have selected : $quiz1"),
          ],
        ),
      ),
    );
  }
}

class QuizTwo extends StatefulWidget {
  @override
  MyState2 createState() => MyState2();
}

class MyState2 extends State<QuizTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Quiz Two (31011221031)"),
          backgroundColor: Colors.deepOrange),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
                'Which programming language is used to build Flutter applications?',
                style: TextStyle(fontSize: 18)),
            const Divider(),
            RadioListTile(
                title: const Text("Dart"),
                value: "Dart",
                groupValue: quiz2,
                onChanged: (value) {
                  setState(() {
                    quiz2 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Kotlin"),
                value: "Kotlin",
                groupValue: quiz2,
                onChanged: (value) {
                  setState(() {
                    quiz2 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("C"),
                value: "C",
                groupValue: quiz2,
                onChanged: (value) {
                  setState(() {
                    quiz2 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Java"),
                value: "Java",
                groupValue: quiz2,
                onChanged: (value) {
                  setState(() {
                    quiz2 = value.toString();
                  });
                }),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                if (quiz2 == "Dart") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/quiz3');
              },
              child: const Text('Next >'),
            ),
            Text("You selected : $quiz2"),
          ],
        ),
      ),
    );
  }
}

class QuizThree extends StatefulWidget {
  @override
  MyState3 createState() => MyState3();
}

class MyState3 extends State<QuizThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Quiz 3 (31011221031)"),
          backgroundColor: Colors.deepOrange),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
                'Access to a cloud database through Flutter is available through which service?',
                style: TextStyle(fontSize: 18)),
            const Divider(),
            RadioListTile(
                title: const Text("SQLite"),
                value: "SQLite",
                groupValue: quiz3,
                onChanged: (value) {
                  setState(() {
                    quiz3 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("Firebase Database"),
                value: "Firebase Database",
                groupValue: quiz3,
                onChanged: (value) {
                  setState(() {
                    quiz3 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("MYSQL"),
                value: "MYSQL",
                groupValue: quiz3,
                onChanged: (value) {
                  setState(() {
                    quiz3 = value.toString();
                  });
                }),
            RadioListTile(
                title: const Text("NOSQL"),
                value: "NOSQL",
                groupValue: quiz3,
                onChanged: (value) {
                  setState(() {
                    quiz3 = value.toString();
                  });
                }),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                if (quiz3 == "Firebase Database") {
                  score = score + 1;
                }
                Navigator.pushNamed(context, '/check');
              },
              child: const Text('Submit'),
            ),
            Text("You selected : $quiz3"),
          ],
        ),
      ),
    );
  }
}

class Answer extends StatefulWidget {
  @override
  MyState4 createState() => MyState4();
}

class MyState4 extends State<Answer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Cheking Answers (31011221031)"),
          backgroundColor: Colors.deepOrange),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Total score is $score', style: TextStyle(fontSize: 18)),
            const Divider(),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                score = 0;
                Navigator.pushNamed(context, '/');
              },
              child: const Text('Redo Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
