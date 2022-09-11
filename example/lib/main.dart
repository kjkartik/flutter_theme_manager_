
import 'package:flutter/material.dart';
import 'package:flutter_theme_manager/flutter_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  buildBlocBuilder(home:Home());

  }