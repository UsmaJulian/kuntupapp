import 'package:app_settings/app_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class SettingPage extends StatelessWidget {
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
                        trailing: Icon(CupertinoIcons.right_chevron),
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
                      trailing: Icon(CupertinoIcons.right_chevron),
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
                        trailing: Icon(CupertinoIcons.right_chevron),
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
                trailing: Icon(CupertinoIcons.right_chevron),
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
                trailing: Icon(CupertinoIcons.right_chevron),
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
                trailing: Icon(CupertinoIcons.right_chevron),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
