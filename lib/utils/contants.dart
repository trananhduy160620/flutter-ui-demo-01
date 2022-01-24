// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const COLOR_BLACK = Color.fromARGB(100, 0, 0, 0);
const COLOR_GREY = Color.fromARGB(100, 128, 128, 128);
const COLOR_WHITE = Colors.white;
const COLOR_DARK_BLUE = Color.fromARGB(200, 0, 0, 139);

const TextTheme TEXT_THEME_DEFAULT = TextTheme(
  headline1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26
  ),
  headline2: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22
  ),
  headline3: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20
  ),
  headline4: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16
  ),
  headline5: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14
  ),
  headline6: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12
  ),

  bodyText1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w500, height: 1.5, fontSize: 14
  ),
  bodyText2: TextStyle(
    color: COLOR_GREY, fontWeight: FontWeight.w500, height: 1.5, fontSize: 14
  ),

  subtitle1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w400, fontSize: 12
  ),
  subtitle2: TextStyle(
    color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 12
  )
);

const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22
  ),
  headline2: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20
  ),
  headline3: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18
  ),
  headline4: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14
  ),
  headline5: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12
  ),
  headline6: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10
  ),

  bodyText1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w500, height: 1.5, fontSize: 12
  ),
  bodyText2: TextStyle(
    color: COLOR_GREY, fontWeight: FontWeight.w500, height: 1.5, fontSize: 12
  ),

  subtitle1: TextStyle(
    color: COLOR_BLACK, fontWeight: FontWeight.w400, fontSize: 10
  ),
  subtitle2: TextStyle(
    color: COLOR_GREY, fontWeight: FontWeight.w400, fontSize: 10
  )
);