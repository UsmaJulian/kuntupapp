import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class TerminosPage extends StatefulWidget {
  @override
  _TerminosPageState createState() => _TerminosPageState();
}

class _TerminosPageState extends State<TerminosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 68.0,
              decoration: BoxDecoration(color: Color(0xff000639)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 111, right: 51),
                    child: Text(
                      'Términos y condiciones',
                      style: themeCustom.textTheme.headline2
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Container(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.clear,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 32.0, left: 20, right: 20),
              child: Text(
                "I'm allergic to bee stings. They cause me to, uh, die. Dear Mr. President, There are too many states nowadays. Please, eliminate three. P.S. I am not a crackpot. Attempted murder? Now honestly, what is that? Do they give a Nobel Prize for attempted chemistry.Oh, loneliness and cheeseburgers are a dangerous mix. Bart, with \$10,000 we'd be millionaires!We started out like Romeo and Juliet, but it ended up in tragedy. I prefer a vehicle that doesn't hurt Mother Earth. It's a go-cart, powered by my own sense of satisfaction.I am not a crackpot.",
                style: themeCustom.textTheme.headline2,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 74),
              width: 333,
              height: 50,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(27.0),
                ),
                color: themeCustom.accentColor,
                onPressed: () {},
                child: Text(
                  'ACEPTAR TÉRMINOS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'GalanoGrotesque',
                    fontSize: 11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
