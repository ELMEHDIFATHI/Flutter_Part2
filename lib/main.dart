import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            leading:
                const Icon(Icons.add_reaction_outlined, color: Colors.black),
            title: const Text("Hello world"),
            actions: [
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),

                onPressed: () {},
                icon: const Icon(
                  Icons.login,
                  size: 24.0,
                ),
                label: const Text('login'), // <-- Text
              ),
            ],
          ),
          body: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text("A")),
                      OutlinedButton(
                          onPressed: () => print("hello word"),
                          child: const Text("B")),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.access_alarm_rounded),
                          label: const Text("Alarm"))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () {}, child: const Text("A")),
                      OutlinedButton(
                          onPressed: () => print("hello word"),
                          child: const Text("B")),
                      TextButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                            mouseCursor:
                                MaterialStateProperty.all(MouseCursor.defer),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.all(10)),
                          ),
                          onPressed: () {},
                          icon: const Icon(Icons.access_alarm_rounded),
                          label: const Text("Alarm"))
                    ],
                  )
                ],
              )),
          floatingActionButton: FloatingActionButton.extended(
            label: const Text("ADD"),
            icon: const Icon(Icons.add),
            onPressed: () {},
            backgroundColor: const Color(0xFF4A148C),
            foregroundColor: Colors.red,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                side: BorderSide(color: Colors.red, width: 6)),
            splashColor: Colors.yellow,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
