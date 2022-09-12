<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

Control your light and dark theme in very simple way.

## Features

Package handle Day & Night(light & Dark) theme.

<table>
  <tr>
    <td><img src="https://github.com/kjkartik/flutter_theme_manager_/blob/master/example/assets/theme.png?raw=true" alt="Success Status" width="200"></td>
  </tr>
</table>

## Getting started


start using the package.
<table>
  <tr>
    <td><img src="https://github.com/kjkartik/flutter_theme_manager_/blob/master/example/assets/theme1.png" alt="Success Status" width="200"></td>
    <td><img src="https://github.com/kjkartik/flutter_theme_manager_/blob/master/example/assets/theme2.png?raw=true" alt="Success Status" width="200"></td>
 
</tr>
</table>

## How To Use

To use this package..

       In root of application return themeManager  and then  return Material App in themebuilde and pass theme...

## Usage

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return themeManager(
        themeBuilder: (ThemeData ) {
          return MaterialApp(theme:ThemeData ,);
        }
    );
  }
}

   /// "provide theme to app through call AppTheme.theme and passing context,lightTheme color and darkThemeColor".
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool changeTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     /// backgroundColor: AppTheme.theme(context: context, lightTheme: //passing light color, darkTheme: //passing dark color),
      appBar: AppBar(
        backgroundColor: AppTheme.theme(context: context, lightTheme: Colors.red, darkTheme: Colors.blue),
        title: Text(
          "AppBar",
          style: TextStyle(
              color: AppTheme.theme(
                  context: context, darkTheme: Colors.black, lightTheme: Colors.black)),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text(" Flutter.dev ",style: TextStyle(color:AppTheme.theme(context: context,lightTheme: Color(0xffffffff),darkTheme:Colors.black ) ),)),
        ],
      ),

    );
  }
}
```

## Additional information

 Through use this package you can pass your theme in very simple way by passing the light and dark color on same time.
