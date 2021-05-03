import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/pages/login_pages/password_renew_page.dart';
import 'package:kunturapp/src/pages/login_pages/register_page.dart';
import 'package:kunturapp/src/routes/onboard_routes_page.dart';
import 'package:kunturapp/src/services/auth_service.dart';
import 'package:kunturapp/src/theme/theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _email, _password;
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(CupertinoIcons.back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.032,
                    left: MediaQuery.of(context).size.width * 0.05),
                child: Text(
                  'Iniciar Sesión',
                  style: themeCustom.textTheme.headline1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.039,
                    left: MediaQuery.of(context).size.width * 0.05,
                    right: MediaQuery.of(context).size.width * 0.05),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Email
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.036,
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Text('Correo electrónico',
                            style: themeCustom.textTheme.headline2),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.005),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0, style: BorderStyle.solid),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(8),
                                right: Radius.circular(8)),
                            color: Color.fromRGBO(246, 247, 250, 100)),
                        child: TextFormField(
                          controller: _emailController,
                          style: themeCustom.textTheme.bodyText2,
                          keyboardType: TextInputType.emailAddress,
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'El campo correo electrónico no puede estar vácio';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onSaved: (input) => _email = input,
                        ),
                      ),
                      // End Email
                      //Contraseña
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.024,
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Text('Contraseña (Mín 6 caracteres)',
                            style: themeCustom.textTheme.headline2),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.005),
                        decoration: BoxDecoration(
                            border:
                                Border.all(width: 0, style: BorderStyle.solid),
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(8),
                                right: Radius.circular(8)),
                            color: Color.fromRGBO(246, 247, 250, 100)),
                        child: TextFormField(
                          controller: _passwordController,
                          style: themeCustom.textTheme.bodyText2,
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'El campo Contraseña no puede estar vácio';
                            } else if (input.length < 6) {
                              return 'El campo Contraseña debe ser mínimo de 6 caracteres';
                            } else
                              return null;
                          },
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: IconButton(
                              iconSize: 20,
                              color: Color(0xff919eab),
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          onSaved: (input) => _password = input,
                        ),
                      ),
                      // End Contraseña
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.023),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        PasswordRenewPage()));
                          },
                          child: Text(
                            '¿Olvidaste tu contraseña?',
                            style: themeCustom.textTheme.headline2
                                .copyWith(color: Color(0xff1858e8)),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                            margin: EdgeInsets.only(
                                top:
                                    MediaQuery.of(context).size.height * 0.166),
                            width: MediaQuery.of(context).size.width * 0.9,
                            height: 54.0,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27.0),
                                    ),
                                  ),
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => themeCustom.accentColor)),
                              child: Text(
                                'CONTINUAR',
                                style: TextStyle(
                                    fontFamily: 'GalanoGrotesque',
                                    fontSize: 11,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {});
                                auth.logIn(_emailController.text,
                                    _passwordController.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OnBoardRoutesPage(),
                                    ));
                              },
                            )),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.030),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                child: Text(
                                  '¿No tienes una cuenta?',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                RegisterPage()));
                                  },
                                  child: Text(
                                    'Crear una cuenta.',
                                    style: themeCustom.textTheme.headline2
                                        .copyWith(color: Color(0xff1858e8)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
