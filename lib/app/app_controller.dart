import 'package:arch/app/services/shared_local_storage_service.dart';
import 'package:arch/app/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class AppController {
  //singleton
  static final AppController instance = AppController._();

  AppController._() {
    changeThemeViewModel.init();
  }
  final ChangeThemeViewModel changeThemeViewModel =
      ChangeThemeViewModel(iLocalStorage: SharedLocalStorageService());
  bool get isDark => changeThemeViewModel.appConfigModel.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch =>
      changeThemeViewModel.appConfigModel.themeSwitch;
}
