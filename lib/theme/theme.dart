import 'package:math_hackers_page/routes/linkspage.dart';

class AppTheme extends StatelessWidget {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: lightYellow,
    scaffoldBackgroundColor: white,
    appBarTheme: const AppBarTheme(
      backgroundColor: white,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(color: darkBlue),
      iconTheme: IconThemeData(color: darkBlue),
    ),
    textTheme: const TextTheme(
        labelLarge: TextStyle(color: darkBlue),
        labelSmall: TextStyle(color: darkBlue),
        labelMedium: TextStyle(color: darkBlue),
        bodyMedium: TextStyle(
            fontFamily: 'Sofia Sans Extra', color: darkBlue, fontSize: 24),
        bodyLarge: TextStyle(
            fontFamily: 'Sofia Sans Extra',
            color: darkBlue,
            fontWeight: FontWeight.bold,
            fontSize: 26),
        bodySmall: TextStyle(
            fontFamily: 'Sofia Sans Extra',
            color: darkBlue,
            fontWeight: FontWeight.w300,
            fontSize: 28),
        headlineMedium: TextStyle(
          fontFamily: 'Sofia Sans Extra',
          fontWeight: FontWeight.bold,
          color: darkBlue,
        ),
        headlineLarge: TextStyle(
            fontFamily: 'Sofia Sans Extra', color: darkBlue, fontSize: 30),
        headlineSmall:
            TextStyle(fontFamily: 'Sofia Sans Extra', color: darkBlue),
        displayMedium: TextStyle(
          fontFamily: 'Sofia Sans Extra',
          color: darkBlue,
        ),
        displaySmall:
            TextStyle(fontFamily: 'Sofia Sans Extra', color: darkBlue),
        displayLarge:
            TextStyle(fontFamily: 'Sofia Sans Extra', color: darkBlue),
        titleSmall: TextStyle(color: darkBlue)),
    inputDecorationTheme: inputDecorationTheme(),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: white,
    scaffoldBackgroundColor: darkBlue,
    appBarTheme: const AppBarTheme(
      backgroundColor: midBlue,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: TextStyle(color: white),
    ),
    textTheme: const TextTheme(
      bodyMedium:
          TextStyle(fontFamily: 'Sofia Sans Extra', color: white, fontSize: 24),
      bodyLarge: TextStyle(
          fontFamily: 'Sofia Sans Extra',
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 26),
      bodySmall: TextStyle(
          fontFamily: 'Sofia Sans Extra',
          color: white,
          fontWeight: FontWeight.w300,
          fontSize: 28),
      headlineMedium: TextStyle(
        fontFamily: 'Sofia Sans Extra',
        fontWeight: FontWeight.bold,
        color: white,
      ),
      headlineLarge:
          TextStyle(fontFamily: 'Sofia Sans Extra', color: white, fontSize: 30),
      headlineSmall: TextStyle(fontFamily: 'Sofia Sans Extra', color: white),
      displayMedium: TextStyle(
        fontFamily: 'Sofia Sans Extra',
        color: white,
      ),
      displaySmall: TextStyle(fontFamily: 'Sofia Sans Extra', color: white),
      displayLarge: TextStyle(fontFamily: 'Sofia Sans Extra', color: white),
    ),
    inputDecorationTheme: inputDecorationTheme(),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: inputDecorationTheme(),
      menuStyle: MenuStyle(
        elevation: MaterialStateProperty.all(0),
        padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
        backgroundColor: MaterialStateProperty.all(darkBlue),
      ),
    ),
  );
  const AppTheme({super.key});

  //ahora vamos a crear un metodo que nos permita cambiar el tema de la app
  //este metodo recibira un BuildContext y un bool
  //el BuildContext nos permitira acceder al tema actual de la app
  //el bool nos permitira saber si el usuario quiere el tema claro o el oscuro
  //este metodo retornara un ThemeData
  static ThemeData getThemeFromKey(BuildContext context, bool isDark) {
    //si el usuario quiere el tema claro
    if (!isDark) {
      //retornamos el tema claro
      return lightTheme;
    } else {
      //si no
      //retornamos el tema oscuro
      return darkTheme;
    }
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelStyle: const TextStyle(color: darkBlue),
    errorStyle: const TextStyle(color: red),
    suffixStyle: const TextStyle(color: darkBlue),
    counterStyle: const TextStyle(color: darkBlue),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 24,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(
        color: lightYellow2,
      ),
      gapPadding: 10,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(70),
      borderSide: const BorderSide(
        color: lightYellow2,
      ),
      gapPadding: 10,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(70),
      borderSide: const BorderSide(
        color: red,
      ),
    ),
  );
}
