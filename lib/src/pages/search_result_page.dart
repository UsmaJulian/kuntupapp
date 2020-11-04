import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/theme/theme.dart';

class SearchResultPage extends StatefulWidget {
  final List<String> strList;
  SearchResultPage({Key key, this.strList}) : super(key: key);

  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Color(0xff000639)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: IconButton(
                        icon: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Container(
                    child: Text(
                      'Resultados de búsqueda',
                      style: themeCustom.textTheme.headline2
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Container(
                    width: 32.0,
                  ),
                ],
              ),
            ),
            Container(
              child: StreamBuilder(
                stream:
                    FirebaseFirestore.instance.collection('data').snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Expanded(
                      child: ListView(
                    children: snapshot.data.docs.map((document) {
                      return Center(
                        child: Column(
                          children: [
                            Container(
                              width: 375,
                              height: 126,
                              child: Row(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(90))),
                                      width: 86,
                                      height: 86,
                                      child: Image.network(document['Imagen'])),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 20, bottom: 40),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                              document['Nombre científico'],
                                              style: themeCustom
                                                  .textTheme.bodyText1),
                                        ),
                                        Container(
                                          child: Text(document['Nombre común'],
                                              style: themeCustom
                                                  .textTheme.headline2),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 1,
                              decoration:
                                  BoxDecoration(color: Colors.grey[300]),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
