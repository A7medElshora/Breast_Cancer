import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = const Color(0xff8c909c);
  static Color backgroundLight = const Color(0xffDFECDB);
  static Color greenColor = const Color(0xff61E757);
  static Color redColor = const Color(0xffEC4B4B);
  static Color blackColor = const Color(0xff383838);
  static Color whiteColor = const Color(0xffFFFFFF);
  static Color backgroundDark = const Color(0xff060E1E);
  static Color darkBlack = const Color(0xdad2ced0);
  static Color greyColor = const Color(0xff141922);

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkBlack,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: whiteColor,
      ),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: backgroundLight,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryLight,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryLight,
      unselectedItemColor: greyColor,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primaryLight,
      shape: StadiumBorder(
        side: BorderSide(
          color: MyTheme.whiteColor,
          width: 6,
        ),
      ),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
    ),
  );
}
