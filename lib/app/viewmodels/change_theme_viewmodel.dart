import 'package:arch/app/interfaces/local_storage_interface.dart';
import 'package:arch/app/models/appconfig_model.dart';

class ChangeThemeViewModel {
  final ILocalStorage? iLocalStorage;
  final AppConfigModel appConfigModel = AppConfigModel();

  ChangeThemeViewModel({this.iLocalStorage});

  Future init() async {
    return await iLocalStorage!.get('isDark').then((value) {
      if (value != null) appConfigModel.themeSwitch.value = value;
    });
  }

  changeTheme(bool value) {
    appConfigModel.themeSwitch.value = value;
    iLocalStorage!.put("isDark", value);
  }
}
