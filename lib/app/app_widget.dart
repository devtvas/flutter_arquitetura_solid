import 'package:arch/app/app_controller.dart';
import 'package:arch/app/views/login/login_view.dart';
import 'package:flutter/material.dart';

class AppWidet extends StatelessWidget {
  const AppWidet({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: AppController.instance.themeSwitch,
        builder: (context, idDark, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: idDark ? Brightness.dark : Brightness.light,
            ),
            home: LoginView(),
          );
        });
  }
}
