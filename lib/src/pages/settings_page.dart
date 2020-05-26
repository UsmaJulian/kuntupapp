import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Settings Page',
          style: themeCustom.textTheme.headline1,
        ),
      ),
    );
  }
}
