import 'package:flutter/material.dart';
import 'package:triage/views/parent_view.dart';

void main() {
  runApp(const TriageApp());
}

class TriageApp extends StatelessWidget {
  const TriageApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Triage Mobile',
      theme: ThemeData(
        primarySwatch: Colors.orange,

        // primaryColor: const Color.fromRGBO(85, 49, 78, 0.81),
      ),
      home: const SafeArea(child: ParentView()),
    );
  }
}
