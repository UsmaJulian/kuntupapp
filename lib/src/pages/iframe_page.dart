import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IframePage extends StatelessWidget {
  final data;

  const IframePage({
    @required this.data,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeCustom.accentColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(this.data['Nombre científico'].toString()),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                CupertinoIcons.clear,
                size: 34.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 32.0, left: 15.0, right: 15.0),
            child: Text(
              'Xenocanto',
              style: themeCustom.textTheme.headline1,
              textAlign: TextAlign.start,
            ),
          ),
          Container(
              width: double.infinity,
              height: 220,
              child: WebView(
                initialUrl: Uri.dataFromString(
                        '<html><body>${this.data['Iframe']}</body></html>',
                        mimeType: 'text/html')
                    .toString(),
                javascriptMode: JavascriptMode.unrestricted,
              )),
          Container(
            padding: EdgeInsets.symmetric(vertical: 22, horizontal: 15.0),
            child: Text(
              'Por favor, no reproduzcas este canto más de 3 veces en campo, causará estrés y confusión a las aves.',
              style: themeCustom.textTheme.bodyText2,
            ),
          )
        ],
      ),
    );
  }
}
