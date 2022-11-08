import 'package:bookmyshow1/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:bookmyshow1/Screen/botton_bar.dart';
// import 'package:fluent_ui/fluent_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: BottomBar());
  }
}
