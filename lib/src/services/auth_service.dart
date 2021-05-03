import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:kunturapp/src/models/user_model.dart';
import 'package:kunturapp/src/providers/user_status_provider.dart';

class AuthService {
  // final Firestore _db = Firestore.instance;

  DocumentSnapshot user;
  UserModel userObject;

  ///signIn
  ///
  ///This void tries to sign in a user with the given email and password.
  Future<UserCredential> logIn(String email, String password) async {
    UserCredential result = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    FirebaseAuth.instance.setLanguageCode("es");
    if (result.user != null) {
      userStatus.setUserStatus = 'Authenticated';
    }
    return result;
  }

  ///signUp
  ///
  ///This void creates a user with the given email and password.

  Future<UserCredential> signUp(
      {String name, String phone, String email, String password}) async {
    return await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .whenComplete(
          () => getCurrentId()
              .then(
                (value) => FirebaseFirestore.instance
                    .collection('users')
                    .doc(value.uid)
                    .set(
                  {
                    'uid': value.uid,
                    'email': email,
                    'name': name,
                    'phone': phone
                  },
                  SetOptions(merge: true),
                ),
              )
              .whenComplete(() => userStatus.setUserStatus = 'Authenticated'),
        );
  }

  ///sendPasswordReset
  ///
  /// This void send a password-reset email to the given email
  Future<dynamic> sendPasswordReset(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      return {
        'success': true,
        'message':
            'Se envió un correo electrónico con un link para restablecer la contraseña',
      };
    } catch (err) {
      return {
        'success': false,
        'error': err,
      };
    }
  }

  ///getCurrentUser
  ///
  /// This void returns a string with the current logued user id
  Future<User> getCurrentId() async {
    User user = FirebaseAuth.instance.currentUser;
    return user;
  }

  /// Retorna el User Document
  Future getCurrentUser() async {
    if (this.user != null) return this.user;

    User user = FirebaseAuth.instance.currentUser;

    DocumentSnapshot doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .get();
    this.user = doc;
    return doc;
  }

  /// Retorna el User
  Future getCurrentUserObject() async {
    if (this.user == null) await getCurrentUser();

    this.userObject = UserModel.fromJson(this.user.data());

    return this.userObject;
  }

  Future signOut() {
    this.user = null;
    return FirebaseAuth.instance.signOut();
  }
}

final AuthService auth = AuthService();
