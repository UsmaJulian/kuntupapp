//CRUD FUNCTIONS

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirestoreService {
  final firestoreInstance = FirebaseFirestore.instance;
  final authInstance = FirebaseAuth.instance;
  String path;
  String uid;

  void initUserPath() {
    this.uid = authInstance.currentUser.uid;
    this.path = "users/$uid";
    print("making user path...." + path);
  }

  firebaseCreate(Map<String, dynamic> ave) async {
    initUserPath();
    await firestoreInstance
        .collection(path + "/watched")
        .doc("${ave['Nombre científico']}")
        .set({
          'Alas': ave['Alas'],
          'Alimentación': ave['Alimentación'],
          'Autor foto': ave['Autor foto'],
          'Cabeza': ave['Cabeza'],
          'Cantidad fotos': ave['Cantidad fotos'],
          'Cola': ave['Cola'],
          'Comportamiento': ave['Comportamiento'],
          'Distribución': ave['Distribución'],
          'Espalda': ave['Espalda'],
          'Especies similares': ave['Especies similares'],
          'Estado de conservación': ave['Estado de conservación'],
          'Familia': ave['Familia'],
          'Genero': ave['Genero'],
          'Hábitat': ave['Hábitat'],
          'Identificación de la especie': ave['Identificación de la especie'],
          'Iframe': ave['Iframe'],
          'Imagen': ave['Imagen'],
          'Imagenes': ave['Imagenes'],
          'Link audio': ave['Link audio'],
          'Literatura citada': ave['Literatura citada'],
          'Mapa': ave['Mapa'],
          'Nombre científico': ave['Nombre científico'],
          'Nombre común': ave['Nombre común'],
          'Nombre en ingles': ave['Nombre en ingles'],
          'Patas': ave['Patas'],
          'Pecho': ave['Pecho'],
          'Pico': ave['Pico'],
          'Región natural': ave['Región natural'],
          'Reproducción': ave['Reproducción'],
          'Vientre': ave['Vientre'],
          'Watched Time': DateTime.now()
        }, SetOptions(merge: true))
        .then((value) => print('Aves agregada avistos correctamente'))
        .catchError((error) => print('El Ave no pudo ser agregada'));
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> firebaseRead() {
    initUserPath();
    return firestoreInstance.collection(path + "/watched").snapshots();
  }

  firebaseDelete(Map<String, dynamic> ave) async {
    initUserPath();
    var vistos = await SharedPreferences.getInstance();
    vistos.setBool('${ave['Nombre científico']}', false);
    await firestoreInstance
        .collection(path + "/watched")
        .doc("${ave['Nombre científico']}")
        .delete()
        .then((value) =>
            print("successfully deleted" + "${ave['Nombre científico']}"))
        .catchError((error) => print('El Ave no pudo ser eliminada'));
  }

  firebaseDeleteByDoc(String doc) async {
    initUserPath();
    await firestoreInstance
        .collection(path + "/watched")
        .doc(doc)
        .delete()
        .then((value) => print("successfully deleted" + "$doc"))
        .catchError((error) => print('El Ave no pudo ser eliminada'));
  }
}
