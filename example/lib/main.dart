
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
}


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.theme(context: context, lightTheme: Colors.red, darkTheme: Colors.blue),
        title: Text(
          "AppBar",
          style: TextStyle(
              color: AppTheme.theme(
                  context: context, darkTheme: Colors.black, lightTheme: Colors.red)),
        ),
        actions: [
          InkWell(
            child: Center(
                child: Text(
                  "theme         ",
                  style: TextStyle(
                      color: AppTheme.theme(
                          context: context,
                          darkTheme: Colors.white,
                          lightTheme: Colors.black)),
                )),
            onTap: () {
              changeTheme(context),
            },
          ),
          TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Home1()));
          }, child: Text("Next"))
        ],
      ),
      body: Column(
        children: [
          Text(" Flutter.dev ",style: TextStyle(color:AppTheme.theme(context: context,lightTheme: Color(0xffffffff),darkTheme:Colors.yellow ) ),),
        ],
      ),

    );
  }
}

