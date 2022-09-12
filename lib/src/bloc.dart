
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




/// Here we create a simple abstrace class
abstract class ThemeEvent{}

// Then We Create a Event
class AppThemeChangeEvent  extends ThemeEvent {}

class AppThemeBloc extends Bloc<ThemeEvent, ThemeData> {
  // passing the inital state as a light mode
  AppThemeBloc() : super(AppThemeColor._light){


    on<AppThemeChangeEvent>((event, emit) async {
      final lightTheme = AppThemeColor._light;
      final darkTheme =AppThemeColor._dark;


      /// here we handel the on change event
      emit(state.brightness == Brightness.dark ? lightTheme : darkTheme);
    });
  }

}


class AppThemeColor {
  static final ThemeData _dark = ThemeData(brightness: Brightness.dark,);

  static final ThemeData _light = ThemeData(brightness: Brightness.light, );
}

class AppTheme{

// return the Color in whole app..
  static theme({required context,required darkTheme,required lightTheme}){
    var data = Theme.of(context).brightness == Brightness.light?lightTheme:darkTheme;
    return data;
  }


}

void changeTheme(context){

  /// handel the theme chage
  context.read<AppThemeBloc>().add(AppThemeChangeEvent());
}