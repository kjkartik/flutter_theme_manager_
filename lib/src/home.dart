
BlocProvider<AppThemeBloc> themeBlocProvider({
  required home,
  bool? debugShowCheckedModeBanner,
  String? title,

}) {
  return BlocProvider(
    create: (BuildContext context) => AppThemeBloc(),
    child: BlocBuilder<AppThemeBloc, ThemeData>(builder: (context, appTheme) {
      return MaterialApp(
        theme: appTheme,
        home: home,


        // debug banner flutter
        debugShowCheckedModeBanner: debugShowCheckedModeBanner ?? true,
        title: title ?? "Theme Manager",
      );
    }),
  );
}
