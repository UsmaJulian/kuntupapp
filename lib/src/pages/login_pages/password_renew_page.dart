import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/services/auth_service.dart';
import 'package:kunturapp/src/theme/theme.dart';

class PasswordRenewPage extends StatefulWidget {
  @override
  _PasswordRenewPageState createState() => _PasswordRenewPageState();
}

class _PasswordRenewPageState extends State<PasswordRenewPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _email;
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(top: 56.0),
                child: IconButton(
                    icon: Icon(
                      CupertinoIcons.clear,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
            ),
            Container(
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 30.0, left: 20.0),
                          child: Text(
                            'Recuperar Contraseña',
                            style: themeCustom.textTheme.headline1,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(top: 13.0, left: 20.0, right: 20.0),
                        child: Text(
                          'Enviaremos un link a tu dirección de  correo electrónico para que cambies tu contraseña',
                          style: themeCustom.textTheme.headline2,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(top: 36.0, left: 20.0),
                          child: Text('Correo electrónico'),
                        ),
                      ),
                      Container(
                        height: 36.0,
                        margin:
                            EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
                        child: TextFormField(
                          controller: _emailController,
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'correo es necesario';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(3.0),
                              borderSide: BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          ),
                          onSaved: (input) => _email = input,
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
                margin: EdgeInsets.only(top: 310),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(27.0),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => themeCustom.accentColor)),
                  onPressed: () {
                    auth.sendPasswordReset(_emailController.text);
                  },
                  child: Text(
                    'ENVIAR LINK',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'GalanoGrotesque',
                      letterSpacing: 1.0,
                      fontSize: 11,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
