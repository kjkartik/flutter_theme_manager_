import 'package:flutter/material.dart';
import 'package:flutter_theme_manager/flutter_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return themeManager(themeBuilder: (theme) {
      return MaterialApp(
        home: const Home(),
        theme: theme,
      );
    });
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool switchThemes = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.theme(
            context: context, lightTheme: Colors.blue, darkTheme: Colors.blue),
        title: Text(
          "AppBar",
          style: TextStyle(
              color: AppTheme.theme(
                  context: context,
                  darkTheme: Colors.black,
                  lightTheme: Colors.black)),
        ),
        actions: [
          Switch(
              value: switchThemes,
              onChanged: (val) {
                setState(() {
                  switchThemes = !switchThemes;
                });
                changeTheme(context);
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            " Flutter.dev ",
            style: TextStyle(
                color: AppTheme.theme(
                    context: context,
                    lightTheme: Colors.black,
                    darkTheme: const Color(0xffffffff))),
          )),
        ],
      ),
    );
  }
}
