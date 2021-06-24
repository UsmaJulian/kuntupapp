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
                stream: FirebaseFirestore.instance
                    .collection('data')
                    .where('query', arrayContainsAny: super.widget.strList)
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 71.0,
                        color: Colors.grey[100],
                        child: Center(
                          child: Text(
                              "${snapshot.data.docs.length} " +
                                  "Resultados coinciden con tu búsqueda",
                              style: themeCustom.textTheme.headline2),
                        ),
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height -
                              (kToolbarHeight + 90.0),
                          child: ListView(
                            children: snapshot.data.docs.map((document) {
                              return Center(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 20.0, right: 20.0),
                                      width: 375,
                                      height: 126,
                                      child: Row(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(90))),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5)),
                                                  child: Image.network(
                                                    document['Imagen'],
                                                    width: 86,
                                                    height: 86,
                                                    fit: BoxFit.fill,
                                                  ))),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 16, bottom: 20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Text(
                                                      document[
                                                          'Nombre científico'],
                                                      style: themeCustom
                                                          .textTheme.bodyText1),
                                                ),
                                                SizedBox(
                                                  height: 12.0,
                                                ),
                                                Container(
                                                  child: Text(
                                                      document['Nombre común'],
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
                                      width: MediaQuery.of(context).size.width *
                                          0.9,
                                      height: 1,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300]),
                                    )
                                  ],
                                ),
                              );
                            }).toList(),
                          )),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
