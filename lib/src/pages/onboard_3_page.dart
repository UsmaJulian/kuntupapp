import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class Onboard3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //"TODO: ACOPLAR PANTALLAS DEBAJO DEL NOTCH"
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              child: Image.asset(
                'assets/onboard/illustration-3.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 39.0, bottom: 10.0),
              child: Center(
                child: Text(
                  'Planea excursiones',
                  style: themeCustom.textTheme.headline1,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 38.0),
              child: Center(
                child: Text(
                  'Explora nuevos lugares para hacer avistamiento de aves',
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
