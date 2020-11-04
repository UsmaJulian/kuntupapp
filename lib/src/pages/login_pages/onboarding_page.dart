import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/login_pages/login_page.dart';
import 'package:kunturapp/src/pages/login_pages/register_page.dart';
import 'package:kunturapp/src/theme/theme.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.100,
            ),
            child: Center(
              child: SvgPicture.asset(
                'assets/icons/logo.svg',
                width: 130.0,
                height: 123.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.097,
                bottom: MediaQuery.of(context).size.height * 0.037),
            child: Text(
              'Ingresa con',
              style: themeCustom.textTheme.headline2,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/icons/apple/centre.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/icons/facebook/centre.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/icons/google+/centre.png'),
                    onPressed: () {},
                  ),
                ),
                Container(
                  child: IconButton(
                    icon: Image.asset('assets/icons/twitter/centre.png'),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.072,
                bottom: MediaQuery.of(context).size.height * 0.033),
            child: Text(
              'O también puedes',
              style: themeCustom.textTheme.headline2,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: 54.0,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27.0),
                ),
                color: themeCustom.accentColor,
                child: Text(
                  'CREAR CUENTA',
                  style: TextStyle(
                      fontFamily: 'GalanoGrotesque',
                      fontSize: 11,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => RegisterPage()));
                }),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.017,
            ),
            width: MediaQuery.of(context).size.width * 0.6,
            height: 54.0,
            child: RaisedButton(
                elevation: 2,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    style: BorderStyle.solid,
                    color: Color(0xfff4f6f8),
                  ),
                  borderRadius: BorderRadius.circular(27.0),
                ),
                child: Text(
                  'INICIAR SESIÓN',
                  style: TextStyle(
                      fontFamily: 'GalanoGrotesque',
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LoginPage()));
                }),
          ),
        ],
      ),
    );
  }
}
