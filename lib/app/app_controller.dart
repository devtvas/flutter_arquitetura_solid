import 'package:arch/app/models/appconfig_model.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  //singleton
  static final AppController instance = AppController._();

  final AppConfigModel appConfigModel = AppConfigModel();
  bool get isDark => appConfigModel.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => appConfigModel.themeSwitch;

  AppController._();
  changeTheme(bool value) {
    appConfigModel.themeSwitch.value = value;
  }
}
