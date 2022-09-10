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

## Getting started

List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
const like = void main() {
 runApp(const MyApp());
 }
/// this is root of application
 class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 Widget build(BuildContext context) {
   
   /// Simple call the themeBlocProvider and passing home
  return themeBlocProvider(home:Home(),debugShowCheckedModeBanner: true  );
 }
}

   /// "provide theme to app through call AppTheme.theme and passing context,lightTheme color and darkThemeColor".
style: TextStyle(
                 color: AppTheme.theme(
                     context: context,
                      darkTheme: Colors.white, 
                      lightTheme: Colors.black)),;
```

## Additional information

TODO: Through use this package you can pass your theme in very simple way by passing the light and dark color on same time.
