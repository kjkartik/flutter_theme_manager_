import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Here we create a simple abstract class
abstract class ThemeEvent {}

// Then We Create a Event
class AppThemeChangeEvent extends ThemeEvent {}

class AppThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  // passing the initial state as a light mode
  AppThemeBloc() : super(AppThemeColor._light) {
    //get the data from user and emit value
    on<AppThemeChangeEvent>((event, emit) async {
      // Initialized the value of light theme

      final lightTheme = AppThemeColor._light;

      // Initialized the value of dark theme
      final darkTheme = AppThemeColor._dark;

      /// here we handle the on change event and provide the theme
      emit(state.brightness == Brightness.dark ? lightTheme : darkTheme);
    });
  }
}

class AppThemeColor {
  /// Passing the brightness in dark mode
  static final ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
  );

  /// Passing the brightness in light mode
  static final ThemeData _light = ThemeData(
    brightness: Brightness.light,
  );
}

class AppTheme {
// return the Color in whole app..

// here we get the context , darkTheme and light theme for user
// and manipulate the data according to the theme set buy user
  static theme({required context, required darkTheme, required lightTheme}) {
    // In data get the  value of light and dark theme and return  to user
    var data = Theme.of(context).brightness == Brightness.light
        ? lightTheme
        : darkTheme;

    //return the data
    return data;
  }
}

/// Making a function fro change the of the of the application
void changeTheme(BuildContext context) {
  // here passing the context and calling the method for change the theme
  context.read<AppThemeBloc>().add(AppThemeChangeEvent());
}
