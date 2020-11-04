import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/home_page.dart';
import 'package:kunturapp/src/pages/search_page.dart';
import 'package:kunturapp/src/pages/settings_page.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

class TabsRoutePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new NavegacionModel(),
      child: Scaffold(
        body: Container(child: Paginas()),
        bottomNavigationBar: CustomBottomNavigator(),
      ),
    );
  }
}

class CustomBottomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<NavegacionModel>(context);

    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      child: Container(
        height: 60,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            iconSize: 18.0,
            backgroundColor: themeCustom.accentColor,
            currentIndex: navegacionModel.paginaActual,
            // onTap: (i) => print('$i'), //imprime el index del tab
            onTap: (i) => navegacionModel.paginaActual = i,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SvgPicture.asset(
                    'assets/icons/birdhouse.svg',
                    color: (navegacionModel.paginaActual == 0)
                        ? Color(0xff32cb97)
                        : Colors.white,
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 1.0, bottom: 4),
                  child: Text(
                    'Lista de aves',
                    style: themeCustom.textTheme.subtitle1.apply(
                      color: (navegacionModel.paginaActual == 0)
                          ? Color(0xff32cb97)
                          : Colors.white,
                    ),
                  ),
                ),
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                      color: (navegacionModel.paginaActual == 1)
                          ? Color(0xff32cb97)
                          : Colors.white,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 1.0, bottom: 4),
                    child: Text('Búsqueda',
                        style: themeCustom.textTheme.subtitle1.apply(
                          color: (navegacionModel.paginaActual == 1)
                              ? Color(0xff32cb97)
                              : Colors.white,
                        )),
                  )),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SvgPicture.asset(
                      'assets/icons/settings.svg',
                      color: (navegacionModel.paginaActual == 2)
                          ? Color(0xff32cb97)
                          : Colors.white,
                    ),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 1.0, bottom: 4),
                    child: Text('Ajustes',
                        style: themeCustom.textTheme.subtitle1.apply(
                          color: (navegacionModel.paginaActual == 2)
                              ? Color(0xff32cb97)
                              : Colors.white,
                        )),
                  )),
            ]),
      ),
    );
  }
}

class Paginas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navegacionModel = Provider.of<NavegacionModel>(context);
    return PageView(
      controller: navegacionModel.pageController,
      // physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomePage(),
        SearchPage(),
        SettingPage(),
      ],
    );
  }
}

class NavegacionModel with ChangeNotifier {
  int _paginaActual = 0;
  PageController _pageController = new PageController();

  int get paginaActual => this._paginaActual;
  set paginaActual(int valor) {
    this._paginaActual = valor;
    _pageController.animateToPage(valor,
        duration: Duration(milliseconds: 250), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => this._pageController;
}
