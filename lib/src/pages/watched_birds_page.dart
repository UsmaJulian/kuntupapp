import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/services/firestore_service.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:intl/intl.dart';

class WatchedBirdsPage extends StatefulWidget {
  WatchedBirdsPage({Key key}) : super(key: key);

  @override
  _WatchedBirdsPageState createState() => _WatchedBirdsPageState();
}

class _WatchedBirdsPageState extends State<WatchedBirdsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeCustom.accentColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Aves vistas"),
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
      body: StreamBuilder(
        stream: FirestoreService().firebaseRead(),
        builder: (BuildContext context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              child: ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (BuildContext context, int index) {
                  DateTime date =
                      snapshot.data.docs[index].data()['Watched Time'].toDate();
                  var formattedDateM = DateFormat('MM/dd').format(date);
                  var formattedDateH = DateFormat('hh:mm a').format(date);
                  return Dismissible(
                    onDismissed: (direction) => FirestoreService()
                        .firebaseDeleteByDoc(snapshot.data.docs[index]
                            .data()['Nombre científico']),
                    direction: DismissDirection.endToStart,
                    secondaryBackground: Container(
                      color: Colors.red,
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 28.0),
                                child: Icon(
                                  CupertinoIcons.delete,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Remover',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    background: Container(
                      color: Colors.red,
                    ),
                    key: Key(
                        snapshot.data.docs[index].data()['Nombre científico']),
                    //TODO:organizar la vista de las aves vistas

                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            snapshot.data.docs[index].data()['Imagen']),
                      ),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new Text(
                            snapshot.data.docs[index]
                                .data()['Nombre científico'],
                            style: TextStyle(color: Colors.black),
                          ),
                          new Text(
                            snapshot.data.docs[index].data()['Genero'],
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      subtitle: Container(
                        margin: EdgeInsets.only(top: 16.0),
                        child: Row(
                          children: [
                            new Text(
                              'Vista: ' + formattedDateM,
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(
                              width: 34.0,
                            ),
                            new Text(
                              'Hora: ' + formattedDateH,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
