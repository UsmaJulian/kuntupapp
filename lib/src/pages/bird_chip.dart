import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kunturapp/src/pages/details_page.dart';
import 'package:kunturapp/src/pages/distrib_page.dart';
import 'package:kunturapp/src/pages/iframe_page.dart';
import 'package:kunturapp/src/routes/tabs_routes_page.dart';

import 'package:kunturapp/src/theme/theme.dart';

import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BirdChip extends StatefulWidget {
  final data;
  final data2;
  final indexTo;
  const BirdChip({Key key, this.data, this.data2, this.indexTo})
      : super(key: key);

  @override
  _BirdChipState createState() => _BirdChipState();
}

class _BirdChipState extends State<BirdChip> {
  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final index = widget.indexTo;
    return ChangeNotifierProvider(
      create: (_) => new NavegacionModel(),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              _SwipperImages(
                data1: this.widget.data,
                data2: this.widget.data2,
              ),
              _AppBar(
                data: data,
                index: index,
              ),
              Positioned(
                  top: (MediaQuery.of(context).size.height * 0.5) - 10,
                  left: 0,
                  right: 0,
                  child: _DetailsCard(data: this.widget.data)),
              // Positioned(
              //   bottom: 0,
              //   left: 0,
              //   right: 0,
              //   child: CustomNavigator(),
              // )
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavigator(),
      ),
    );
  }
}

class _AppBar extends StatefulWidget {
  final data;
  final index;

  const _AppBar({
    Key key,
    this.data,
    this.index,
  }) : super(key: key);

  @override
  __AppBarState createState() => __AppBarState();
}

class __AppBarState extends State<_AppBar> {
  bool visto = false;

  @override
  void initState() {
    super.initState();
    _restaurarVisto();
    setState(() {});
  }

  void _restaurarVisto() async {
    var vistos = await SharedPreferences.getInstance();
    var visto = vistos.getBool('${widget.data['Nombre científico']}') ?? false;

    setState(() {
      this.visto = visto;
    });
  }

  void _crearVisto() async {
    setState(() {
      visto = !visto;
    });
    var vistos = await SharedPreferences.getInstance();
    vistos.setBool('${widget.data['Nombre científico']}', visto);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(vertical: 32, horizontal: 15.0),
          child: ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            child: Container(
              width: 24,
              height: 24,
              color: Color.fromRGBO(220, 220, 220, 0.5),
              child: InkWell(
                child: Icon(
                  CupertinoIcons.back,
                  color: Colors.white,
                  size: 13,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.only(top: 32.0, right: 15.0),
          child: Container(
            key: UniqueKey(),
            width: 62.0,
            height: 24,
            decoration: BoxDecoration(
                color: (visto == true) ? Color(0xff32cb97) : Colors.white,
                borderRadius: BorderRadius.circular(16.0)),
            child: Center(
              //"TODO:agregar alert dialog con: has agregado nombre dinamico a tu lista de aves vistas"
              child: GestureDetector(
                key: UniqueKey(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Visibility(
                        visible: visto, child: Flexible(child: Container())),
                    Text(
                      // widget.index.toString(),
                      'Visto',
                      style: themeCustom.textTheme.button,
                    ),
                    Visibility(
                        visible: visto,
                        child: Icon(
                          CupertinoIcons.check_mark,
                          size: 19,
                        )),
                  ],
                ),
                onTap: () {
                  _crearVisto();

                  showDialog(
                      context: context,
                      builder: (BuildContext context) => CupertinoAlertDialog(
                            title: new Text("Ave agregada"),
                            content: new Text(
                                "Has agregado ${this.widget.data['Nombre científico']} a tu lista de aves vistas"),
                            actions: <Widget>[
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                child: Text('Entendido'),
                                onPressed: () {
                                  setState(() {
                                    Navigator.of(context, rootNavigator: true)
                                        .pop("Entendido");
                                  });
                                },
                              ),
                            ],
                          ));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SwipperImages extends StatelessWidget {
  final data1;
  final data2;

  const _SwipperImages({this.data1, this.data2});
  @override
  Widget build(BuildContext context) {
    List<String> imagenes = this.data1['Imagenes'].cast<String>();
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.white,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return FadeInImage(
            placeholder: AssetImage('assets/images/no_image.png'),
            image: NetworkImage('${imagenes[index]}'),
            fit: BoxFit.fill,
          );
        },
        itemCount: imagenes.length,
        pagination: new SwiperPagination(
            margin: EdgeInsets.only(
              bottom: 12.0,
            ),
            builder: DotSwiperPaginationBuilder(
                activeColor: Color(0xff32cb97), size: 6.0, activeSize: 6)),
      ),
    );
  }
}

class _DetailsCard extends StatelessWidget {
  final data;

  const _DetailsCard({this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0,
            blurRadius: 0,
            offset: Offset(0, -16),
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: BoxDecoration(
          color: Color(0xfff9fafb),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(16),
            bottom: Radius.circular(0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 50,
                height: 4,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(16))),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(width: 15.0),
                  Text(
                    this.data['Nombre científico'],
                    style: themeCustom.textTheme.headline1,
                  ),
                  Expanded(child: Container()),
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/icons/share.svg',
                      color: Color(0xff32cb97),
                    ),
                    onPressed: () => share(
                      context,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                this.data['Nombre común'],
                style: themeCustom.textTheme.bodyText2,
              ),
            ),
            _itemsListTile(context, this.data),
          ],
        ),
      ),
    );
  }

  Widget _itemsListTile(BuildContext context, data) {
    return Expanded(
        child: ListView(
      children: ListTile.divideTiles(context: context, tiles: [
        ListTile(
          title: Text(
            'Alimentación',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Alimentación',
                          campo: 'Alimentación',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Comportamiento',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Comportamiento',
                          campo: 'Comportamiento',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Distribución',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DistributionPage(
                          data: data,
                          detalle: 'Distribución',
                          campo: 'Distribución',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Especies similares',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Especies similares',
                          campo: 'Especies similares',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Estado de conservación',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Estado de conservación',
                          campo: 'Estado de conservación',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Familia',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Familia',
                          campo: 'Familia',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Genero',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Genero',
                          campo: 'Genero',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Hábitat',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Hábitat',
                          campo: 'Hábitat',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Identificación de la especie',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Identificación de la especie',
                          campo: 'Identificación de la especie',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Link audio',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => IframePage(
                          data: this.data,
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Literatura citada',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text(
            'Nombre científico',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Nombre científico',
                          campo: 'Nombre científico',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Nombre común',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Nombre común',
                          campo: 'Nombre común',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Nombre en ingles',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(
                          data: data,
                          detalle: 'Nombre en ingles',
                          campo: 'Nombre en ingles',
                        )));
          },
        ),
        ListTile(
          title: Text(
            'Región natural',
            style: themeCustom.textTheme.headline2,
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            size: 16.0,
            color: Colors.black,
          ),
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 110.0),
          child: ListTile(
            title: Text(
              'Reproducción',
              style: themeCustom.textTheme.headline2,
            ),
            trailing: Icon(
              CupertinoIcons.right_chevron,
              size: 16.0,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(
                            data: data,
                            detalle: 'Reproducción',
                            campo: 'Reproducción',
                          )));
            },
          ),
        ),
      ]).toList(),
    ));
  }

  share(BuildContext context) {
    String text = 'Texto que se muestra para invitar a compartir';
    String description = 'Texto o Url Cualquiera  ';
    final RenderBox box = context.findRenderObject();
    Share.share(text,
        subject: description,
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}
