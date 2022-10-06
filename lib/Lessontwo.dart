import 'package:flutter/material.dart';

class LessonTwo extends StatefulWidget {
  const LessonTwo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LessonTwoState();
  }
}

class LessonTwoState extends State<LessonTwo> {
  var c = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: c,
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            c = Colors.red;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
