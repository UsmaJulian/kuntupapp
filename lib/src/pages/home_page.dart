import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/bird_chip.dart';
import 'package:kunturapp/src/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = false;
  String field = 'Nombre científico';
  // String field = 'Nombre común';
  @override
  void initState() {
    super.initState();
    isVisible = isVisible;
    setState(() {
      field = field;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: <Widget>[
          _backGround(context),
          _headerWidget(context),
          Positioned(
              top: 185,
              left: 0,
              right: 0,
              child: _cardItemsList(context, field)),
        ],
      ),
    ));
  }

  Widget _backGround(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xfff4f6f8),
    );
  }

  Widget _headerWidget(
    BuildContext context,
  ) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('data').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData || snapshot.data?.docs == null) {
            return Center(
              child: CupertinoActivityIndicator(),
            );
          } else {
            return Container(
              padding: EdgeInsets.only(top: 46.0, left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text('Lista de Aves',
                          style: themeCustom.textTheme.headline1),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: InkWell(
                          child: Icon(
                            CupertinoIcons.ellipsis,
                            color: Color(
                              0xff32cb97,
                            ),
                            size: 16.0,
                          ),
                          onTap: () {
                            showCupertinoDialog(
                                context: context,
                                builder: (BuildContext context) =>
                                    CupertinoAlertDialog(
                                        title: Text(
                                            'Ordenar la lista de aves por:'),
                                        content: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Divider(),
                                            GestureDetector(
                                              child: Container(
                                                width: double.infinity,
                                                height: 50,
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      vertical: 16.0),
                                                  child: Text(
                                                    'Nombre común',
                                                    style: themeCustom
                                                        .textTheme.headline2
                                                        .apply(
                                                            color: Color(
                                                                0xff0076ff)),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  field = 'Nombre común';
                                                });
                                              },
                                            ),
                                            Divider(),
                                            GestureDetector(
                                              child: Container(
                                                width: double.infinity,
                                                height: 50,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    top: 22.0,
                                                  ),
                                                  child: Text(
                                                    'Nombre científico',
                                                    style: themeCustom
                                                        .textTheme.headline2
                                                        .apply(
                                                            color: Color(
                                                                0xff0076ff)),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  field = 'Nombre científico';
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          // new CupertinoDialogAction(
                                          //     isDestructiveAction: true,
                                          //     child: const Text('Cancelar'),
                                          //     onPressed: () {
                                          //       Navigator.pop(
                                          //           context, 'Cancelar');
                                          //     }),
                                          new CupertinoDialogAction(
                                              child: const Text('Aceptar'),
                                              isDefaultAction: true,
                                              onPressed: () {
                                                Navigator.pop(
                                                    context, 'Aceptar');
                                              }),
                                        ]));
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Text('${snapshot.data.docs.length}',
                          style: themeCustom.textTheme.bodyText2),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text('Especies disponibles',
                          style: themeCustom.textTheme.bodyText2),
                    ],
                  ),
                  SizedBox(height: 19.0),
                  _searchBar(context),
                ],
              ),
            );
          }
        });
  }

  Widget _searchBar(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.92,
        height: 44.0,
        decoration: BoxDecoration(
            color: Color(0xffdfe3e8),
            borderRadius: BorderRadius.circular(25.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 16.0,
            ),
            SvgPicture.asset(
              'assets/icons/search.svg',
              color: Color(0xff212b36),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Buscar',
              style: themeCustom.textTheme.bodyText2,
            )
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Widget _cardItemsList(BuildContext context, String field) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;

    return Container(
      width: double.infinity,
      height: size.height - padding.top - (padding.bottom + 230),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
          bottom: Radius.circular(0),
        ),
      ),
      child: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('data')
            .orderBy(field)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData || snapshot.data?.docs == null) {
            return Center(child: CupertinoActivityIndicator());
          } else {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data.docs.length,
              itemBuilder: (BuildContext context, int index) {
                //snapshot.data.documents[index]['Nombre científico']
                return Column(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        key: UniqueKey(),
                        height: 89.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.all(15.0),
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0xffd8d8d8)),
                                  borderRadius: BorderRadius.circular(50)),
                              child: ClipRRect(
                                  clipBehavior: Clip.antiAlias,
                                  borderRadius: BorderRadius.circular(90),
                                  child: CircleAvatar(
                                    radius: 30.0,
                                    backgroundImage: NetworkImage(
                                        "${snapshot.data.docs[index].data()['Imagen']}"),
                                    backgroundColor: Colors.transparent,
                                  )),
                            ),
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    snapshot.data.docs[index]
                                        .data()['Nombre científico'],
                                    style: themeCustom.textTheme.bodyText1,
                                  ),
                                  Text(
                                    snapshot.data.docs[index]
                                        .data()['Nombre común'],
                                    style: themeCustom.textTheme.bodyText2,
                                  ),
                                ],
                              ),
                            ),
                            Visibility(
                              visible: isVisible,
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 24.0),
                                child: Icon(
                                  CupertinoIcons.check_mark,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        final data = snapshot.data.docs[index];
                        final data2 = snapshot.data.docs;
                        final indexTo = index;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BirdChip(
                                      data: data.data(),
                                      data2: data2,
                                      indexTo: indexTo,
                                    )));
                      },
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 0.2,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
