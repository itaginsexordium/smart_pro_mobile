import 'package:flutter/material.dart';

import './constants.dart';

ThemeData basicTheme() => ThemeData(
      brightness: Brightness.dark,
      primaryColor: kSecondaryColor,
      secondaryHeaderColor: kSecondaryColor,
      scaffoldBackgroundColor: kBackgroundColor,
      useMaterial3: true,
      
      //cardTheme
      cardTheme: CardTheme(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
              const Border(bottom: BorderSide(color: Colors.white, width: 4)),
          surfaceTintColor: kAccentColor,
          elevation: 5
          // color: kSecondaryColor
          ),

      //appBarTheme
      appBarTheme: AppBarTheme(
          backgroundColor: kBackgroundColor,
          centerTitle: false,
          // elevation: 15,
          titleTextStyle: TextStyle(color: Colors.lightBlueAccent),
          shape:
              const Border(bottom: BorderSide(color: Colors.white, width: 1)),
          iconTheme: defaultIconThemeData),

      //bottomNavigationBarTheme
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        // unselectedIconTheme: defaultIconThemeData.copyWith(size: 25.0),
        // selectedIconTheme: defaultIconThemeData.copyWith(size: 25.0),
        backgroundColor: kBackgroundColor,
        selectedItemColor: kSecondaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),

      drawerTheme: DrawerThemeData(backgroundColor: kBackgroundColor)
    );
