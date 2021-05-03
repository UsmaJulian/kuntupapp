import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/routes/onboard_routes_page.dart';
import 'package:kunturapp/src/theme/theme.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer(
        Duration(seconds: 5),
        () => Navigator.push(context,
            new MaterialPageRoute(builder: (context) => OnBoardRoutesPage())));
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //D _logoTipo(),
            _loadingIcon(),
            _textWelcome(),
          ],
        ),
      ),
    );
  }

  // Widget _logoTipo() {
  //   return Container(
  //     margin: EdgeInsets.symmetric(vertical: 168.0),
  //     child: Center(
  //         child: SvgPicture.asset(
  //       'assets/icons/logo.svg',
  //       width: 130.0,
  //       height: 123.0,
  //     )),
  //   );
  // }

  Widget _loadingIcon() {
    return Container(
      child: CupertinoActivityIndicator(),
    );
  }

  Widget _textWelcome() {
    return Container(
      margin: EdgeInsets.only(top: 22),
      padding: EdgeInsets.symmetric(horizontal: 48.0),
      child: Text(
        'Un momento, estamos cargando las aves en tu teléfono. ',
        style: themeCustom.textTheme.headline2,
        textAlign: TextAlign.center,
      ),
    );
  }
}
