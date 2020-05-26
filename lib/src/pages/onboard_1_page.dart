import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class Onboard1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                'assets/onboard/illustration-1.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 39.0, bottom: 10.0),
              child: Center(
                child: Text(
                  'Aprende sobre aves',
                  style: themeCustom.textTheme.headline1,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 38.0),
              child: Center(
                child: Text(
                  'Accede a información completa y precisa sobre las aves de Colombia',
                  style: themeCustom.textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
