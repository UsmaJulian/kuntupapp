import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/pages/login_pages/login_page.dart';
import 'package:kunturapp/src/routes/onboard_routes_page.dart';
import 'package:kunturapp/src/services/auth_service.dart';
import 'package:kunturapp/src/theme/theme.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // ignore: unused_field
  String _name, _phone, _email, _password;
  bool _obscureText = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  'Crear mi cuenta',
                  style: themeCustom.textTheme.headline1,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02,
                    right: MediaQuery.of(context).size.width * 0.02),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Name
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.039,
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Text('Nombre y apellido',
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
                          controller: _nameController,
                          style: themeCustom.textTheme.bodyText2,
                          keyboardType: TextInputType.name,
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'El campo nombre no puede estar vácio';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onSaved: (input) => _name = input,
                        ),
                      ),
                      // End Name
                      //Phone
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.016,
                            left: MediaQuery.of(context).size.width * 0.02),
                        child: Text('Télefono',
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
                          controller: _phoneController,
                          style: themeCustom.textTheme.bodyText2,
                          keyboardType: TextInputType.number,
                          validator: (input) {
                            if (input.isEmpty) {
                              return 'El campo teléfono no puede estar vácio';
                            } else
                              return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          onSaved: (input) => _phone = input,
                        ),
                      ),
                      // End Phone
                      //Email
                      Container(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.016,
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
                            top: MediaQuery.of(context).size.height * 0.016,
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
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.071),
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 54.0,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                              color: themeCustom.accentColor,
                              child: Text(
                                'CONTINUAR',
                                style: TextStyle(
                                    fontFamily: 'GalanoGrotesque',
                                    fontSize: 11,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              onPressed: () {
                                setState(() {});
                                auth.signUp(
                                    name: _nameController.text,
                                    phone: _phoneController.text,
                                    email: _emailController.text,
                                    password: _passwordController.text);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OnBoardRoutesPage(),
                                    ));
                              }),
                        ),
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
                                  '¿Ya tienes una cuenta?',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              Container(
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                LoginPage()));
                                  },
                                  child: Text(
                                    'Inicia sesión.',
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
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}
