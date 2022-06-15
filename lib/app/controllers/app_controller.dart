import 'package:flutter/cupertino.dart';

class AppController {
  //singleton
  static final AppController instance = AppController._();

  final themeSwitch = ValueNotifier<bool>(false);

  AppController._();
  changeTheme(bool value) {
    themeSwitch.value = value;
  }
}
