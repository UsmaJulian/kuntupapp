import 'package:flutter/material.dart';

import 'package:kunturapp/src/theme/theme.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Search Page',
          style: themeCustom.textTheme.headline1,
        ),
      ),
    );
  }
}
