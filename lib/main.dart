import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kunturapp/src/pages/loading_page.dart';
import 'package:kunturapp/src/services/user_prefs.dart';

import 'package:kunturapp/src/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final UserPrefs prefs = new UserPrefs();
  await prefs.initPrefs();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //"TODO:Cambiar el color del statusbar"
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.white,statusBarBrightness: Brightness.dark));
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kuntur App',
        theme: themeCustom,
        // home: TabsRoutePage(),
        home: LoadingPage());
  }
}
