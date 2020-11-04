import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kunturapp/src/pages/loading_page.dart';
import 'package:kunturapp/src/providers/color_selection_back_provider.dart';
import 'package:kunturapp/src/providers/color_selection_beak_provider.dart';
import 'package:kunturapp/src/providers/color_selection_belly_provider.dart';
import 'package:kunturapp/src/providers/color_selection_chest_provider.dart';
import 'package:kunturapp/src/providers/color_selection_foots_provider.dart';
import 'package:kunturapp/src/providers/color_selection_head_provider.dart';
import 'package:kunturapp/src/providers/color_selection_tail_provider.dart';
import 'package:kunturapp/src/providers/color_selection_wings_provider.dart';
import 'package:kunturapp/src/providers/family_selection_provider.dart';
import 'package:kunturapp/src/providers/gender_selection_provider.dart';
import 'package:kunturapp/src/providers/user_status_provider.dart';
import 'package:kunturapp/src/services/user_prefs.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

// ignore: non_constant_identifier_names
bool USE_FIRESTORE_EMULATOR = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final UserPrefs prefs = new UserPrefs();
  await prefs.initPrefs();
  await Firebase.initializeApp();
  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = Settings(
        host: 'localhost:8080', sslEnabled: false, persistenceEnabled: false);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.black, statusBarBrightness: Brightness.dark));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FamilySelection(),
        ),
        ChangeNotifierProvider(
          create: (context) => GenderSelection(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorHead(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorBeak(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorBack(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorWings(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorTail(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorChest(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorBelly(),
        ),
        ChangeNotifierProvider(
          create: (context) => ColorFoots(),
        ),
        ChangeNotifierProvider(
          create: (context) => Userstatus(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kuntur App',
        theme: themeCustom,
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => LoadingPage(),
        },
      ),
    );
  }
}
