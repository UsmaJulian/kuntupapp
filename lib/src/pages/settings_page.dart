import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/watched_birds_page.dart';
import 'package:kunturapp/src/routes/onboard_routes_page.dart';
import 'package:kunturapp/src/services/auth_service.dart';
import 'package:kunturapp/src/theme/theme.dart';

class SettingPage extends StatelessWidget {
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 46, left: 20),
              child: Text(
                'Ajustes',
                style: themeCustom.textTheme.headline1,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 72, left: 20),
                    child: Text(
                      'Sistema',
                      style: themeCustom.textTheme.bodyText1,
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 23, left: 10),
                      child: ListTile(
                        leading: Icon(Icons.volume_up_outlined),
                        title: Text(
                          'Sonido',
                          style: themeCustom.textTheme.headline2,
                        ),
                        trailing: Icon(CupertinoIcons.right_chevron,
                            color: Colors.black),
                      ),
                    ),
                    onTap: () => AppSettings.openSoundSettings(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 23, left: 10),
                    child: ListTile(
                      leading: Icon(CupertinoIcons.folder),
                      title: Text(
                        'Aves vistas',
                        style: themeCustom.textTheme.headline2,
                      ),
                      trailing: Icon(CupertinoIcons.right_chevron,
                          color: Colors.black),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WatchedBirdsPage()));
                      },
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(top: 23, left: 10),
                      child: ListTile(
                        leading: Icon(CupertinoIcons.wifi),
                        title: Text(
                          'Wifi',
                          style: themeCustom.textTheme.headline2,
                        ),
                        trailing: Icon(CupertinoIcons.right_chevron,
                            color: Colors.black),
                      ),
                    ),
                    onTap: () => AppSettings.openWIFISettings(),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 48, left: 20),
              child: Text(
                'Aplicación',
                style: themeCustom.textTheme.bodyText1,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23, left: 10),
              child: ListTile(
                leading: Icon(Icons.translate_sharp),
                title: Text(
                  'Idioma',
                  style: themeCustom.textTheme.headline2,
                ),
                trailing:
                    Icon(CupertinoIcons.right_chevron, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23, left: 10),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text(
                  'Contenido legal',
                  style: themeCustom.textTheme.headline2,
                ),
                trailing:
                    Icon(CupertinoIcons.right_chevron, color: Colors.black),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23, left: 10),
              child: ListTile(
                leading: Icon(Icons.share_sharp),
                title: Text(
                  'Compartir con un amigo',
                  style: themeCustom.textTheme.headline2,
                ),
                trailing: Icon(
                  CupertinoIcons.right_chevron,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 23, left: 10),
              child: ListTile(
                leading: SvgPicture.asset(
                  'assets/log-out/log-out.svg',
                  width: 20.0,
                  height: 20.0,
                ),
                title: Text(
                  'Cerrar sesión',
                  style: themeCustom.textTheme.headline2,
                ),
                trailing: SvgPicture.asset(
                  'assets/log-out/log-out.svg',
                  color: Colors.black,
                  width: 20.0,
                  height: 20.0,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => OnBoardRoutesPage()));
                  return authService.signOut();
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
