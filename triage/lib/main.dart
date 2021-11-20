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
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(child: ParentView()),
    );
  }
}
