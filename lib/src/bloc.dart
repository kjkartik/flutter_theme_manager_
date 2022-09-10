
class AppThemeBloc extends Bloc<ThemeEvent, ThemeData> {
AppThemeBloc() : super(AppThemeColor._light){
  on<AppThemeChangeEvent>((event, emit) async {
    final lightTheme = AppThemeColor._light;
    final darkTheme =AppThemeColor._dark;

  emit(state.brightness == Brightness.dark ? lightTheme : darkTheme);
});
}

}


class  AppThemeColor {
  static final ThemeData _dark = ThemeData(brightness: Brightness.dark,);

  static final ThemeData _light = ThemeData(brightness: Brightness.light, );
}

class AppTheme{


 static theme({required context,required lightTheme,required darkTheme}){
  var data = Theme.of(context).brightness == Brightness.light?darkTheme:lightTheme;
    return data;
}


}