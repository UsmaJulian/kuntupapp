import 'package:flutter/material.dart';

import 'package:kunturapp/src/pages/login_pages/onboarding_page.dart';

import 'package:kunturapp/src/pages/onboard_1_page.dart';
import 'package:kunturapp/src/pages/onboard_2_page.dart';
import 'package:kunturapp/src/pages/onboard_3_page.dart';
import 'package:kunturapp/src/providers/user_status_provider.dart';
import 'package:kunturapp/src/routes/tabs_routes_page.dart';

import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardRoutesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new _NavegacionOnBoard(),
      child: Scaffold(
        body: _PaginasOnBoard(),
      ),
    );
  }
}

class _PaginasOnBoard extends StatefulWidget {
  @override
  __PaginasOnBoardState createState() => __PaginasOnBoardState();
}

class __PaginasOnBoardState extends State<_PaginasOnBoard> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    print('USERSTATUS====');
    print(userStatus.userStatus);
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    final navegacionOnBoard = Provider.of<_NavegacionOnBoard>(context);
    navegacionOnBoard.pageController.addListener(() {
      setState(() {
        index = navegacionOnBoard.pageController.page.toInt();
      });
    });

    return Stack(
      children: [
        PageView(
          controller: navegacionOnBoard.pageController,
          children: <Widget>[
            Onboard1Page(),
            Onboard2Page(),
            Onboard3Page(),
          ],
        ),
        Positioned(
          bottom: padding.bottom + size.height * .24,
          left: 55.0,
          right: 55.0,
          child: Center(
            child: Container(
              child: SmoothPageIndicator(
                controller: navegacionOnBoard.pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotHeight: 5.0,
                  dotWidth: 5.0,
                  activeDotColor: Color(0xff35166EA),
                  expansionFactor: 2,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 46,
          left: 55.0,
          right: 55.0,
          child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: 54.0,
                child: ElevatedButton(
                    child: (index == 0)
                        ? Text(
                            'COMENZAR',
                            style: TextStyle(
                                fontFamily: 'GalanoGrotesque',
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        : Text(
                            'COMENZAR',
                            style: TextStyle(
                                fontFamily: 'GalanoGrotesque',
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => themeCustom.accentColor)),
                    onPressed: () {
                      // (index <= 1)
                      //     ? navegacionOnBoard.pageController.nextPage(
                      //         duration: Duration(milliseconds: 350),
                      //         curve: Curves.easeOut)
                      //     :
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return userStatus.userStatus == 'Authenticated'
                            ? TabsRoutePage()
                            : OnBoardingPage();
                      }));
                    })),
          ),
        ),
      ],
    );
  }
}

class _NavegacionOnBoard with ChangeNotifier {
  int _paginaOnBoardActual = 0;
  PageController _pageOnBoardController = new PageController();

  int get paginaActual => this._paginaOnBoardActual;
  set paginaActual(int valor) {
    this._paginaOnBoardActual = valor;
    _pageOnBoardController.animateToPage(valor,
        duration: Duration(milliseconds: 350), curve: Curves.easeOut);

    notifyListeners();
  }

  PageController get pageController => this._pageOnBoardController;
}
