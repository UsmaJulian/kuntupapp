import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/search_page.dart';
import 'package:kunturapp/src/pages/settings_page.dart';

import 'package:kunturapp/src/routes/tabs_routes_page.dart';
import 'package:kunturapp/src/theme/theme.dart';

class CustomNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0)),
      child: Container(
        width: double.infinity,
        height: 60,
        color: themeCustom.accentColor,
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SvgPicture.asset(
                        'assets/icons/birdhouse.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 2.0,
                      ),
                      child: Text('Lista de aves',
                          style: themeCustom.textTheme.subtitle1),
                    ),
                    SizedBox(
                      height: 8.0,
                    )
                  ],
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => TabsRoutePage())),
              ),
            ),
            Expanded(
              child: InkWell(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 13.0),
                        child: SvgPicture.asset('assets/icons/search.svg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 2.0,
                        ),
                        child: Text('Busqueda',
                            style: themeCustom.textTheme.subtitle1),
                      )
                    ],
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SearchPage()))),
            ),
            Expanded(
              child: InkWell(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SvgPicture.asset('assets/icons/settings.svg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 2.0,
                      ),
                      child: Text('Ajustes',
                          style: themeCustom.textTheme.subtitle1),
                    )
                  ],
                ),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SettingPage())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
