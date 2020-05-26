import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class DistributionPage extends StatelessWidget {
  final data;
  final detalle;
  final campo;

  const DistributionPage({
    @required this.data,
    @required this.detalle,
    @required this.campo,
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 32.0, left: 15.0, right: 15.0),
              child: Text(
                '${this.detalle}',
                style: themeCustom.textTheme.headline1,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 12.0, left: 15.0, right: 15.0),
              child: Text(
                "${this.data['${this.campo}']}",
                style: themeCustom.textTheme.bodyText1,
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 36.0),
              child: FadeInImage(
                placeholder: AssetImage('assets/images/no_image.png'),
                image: NetworkImage('${this.data['Mapa']}'),
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
