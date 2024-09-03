import 'package:flutter/material.dart';
import 'package:simple_app/screens/myApp.dart';
// import 'package:simple_app/screens/convert.dart';
// import 'package:simple_app/screens/latestRate.dart';

void main() {
  runApp(MaterialApp(
    title: "Exchange Currency",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Container Widget"),
      ),
      body: const MyApp(),
    ),
  ));
}