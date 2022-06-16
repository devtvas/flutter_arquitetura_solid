import 'package:arch/app/interfaces/local_storage_interface.dart';
import 'package:arch/app/models/appconfig_model.dart';
import 'package:arch/app/services/shared_local_storage_service.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  //singleton
  static final AppController instance = AppController._();

  AppController._() {
    storage.get('isDark').then((value) {
      if (value != null) appConfigModel.themeSwitch.value = value;
    });
  }

  final AppConfigModel appConfigModel = AppConfigModel();
  bool get isDark => appConfigModel.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => appConfigModel.themeSwitch;

  final ILocalStorage storage = SharedLocalStorageService();

  changeTheme(bool value) {
    appConfigModel.themeSwitch.value = value;
    storage.put("isDark", value);
  }
}
