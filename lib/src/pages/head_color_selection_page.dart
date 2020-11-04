import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/providers/color_selection_head_provider.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

class HeadColorSelectionPage extends StatefulWidget {
  @override
  _HeadColorSelectionPageState createState() => _HeadColorSelectionPageState();
}

class _HeadColorSelectionPageState extends State<HeadColorSelectionPage> {
  bool _selectAmarillo = true;
  bool _selectNaranja = true;
  bool _selectRojo = true;
  bool _selectVioleta = true;
  bool _selectAzul = true;
  bool _selectVerde = true;
  bool _selectCafe = true;
  bool _selectGris = true;
  bool _selectBlanco = true;
  bool _selectNegro = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9fafb),
      body: SafeArea(
        child: Consumer<ColorHead>(
          builder: (BuildContext context, colorHead, _) => Column(
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
                        'Selecciona color cabeza',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 61.0,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectAmarillo
                                  ? 'assets/colors_uncheck/amarillo.svg'
                                  : 'assets/colors_active/active-amarillo.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectNaranja = true;
                                  _selectAmarillo = !_selectAmarillo;
                                  colorHead.setHeadColor = 'Amarillo';
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Amarillo',
                              style: themeCustom.textTheme.button,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 61.0,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectNaranja
                                  ? 'assets/colors_uncheck/naranja.svg'
                                  : 'assets/colors_active/active-naranja.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = !_selectNaranja;
                                  colorHead.setHeadColor = 'Naranja';
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Naranja',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 61.0,
                      ),
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectRojo
                                  ? 'assets/colors_uncheck/rojo.svg'
                                  : 'assets/colors_active/active-rojo.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = !_selectRojo;
                                  colorHead.setHeadColor = 'Rojo';
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Rojo',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectVioleta
                                  ? 'assets/colors_uncheck/violeta.svg'
                                  : 'assets/colors_active/active-violeta.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = !_selectVioleta;
                                  colorHead.setHeadColor = 'Violeta';
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Violeta',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectAzul
                                  ? 'assets/colors_uncheck/azul.svg'
                                  : 'assets/colors_active/active-azul.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = !_selectAzul;
                                  colorHead.setHeadColor = 'Azul';
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Azul',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectVerde
                                  ? 'assets/colors_uncheck/verde.svg'
                                  : 'assets/colors_active/active-verde.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = !_selectVerde;
                                  colorHead.setHeadColor = 'Verde';
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Verde',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectCafe
                                  ? 'assets/colors_uncheck/café.svg'
                                  : 'assets/colors_active/active-café.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = !_selectCafe;
                                  colorHead.setHeadColor = 'Café';
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Café',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectGris
                                  ? 'assets/colors_uncheck/gris.svg'
                                  : 'assets/colors_active/active-gris.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = !_selectGris;
                                  colorHead.setHeadColor = 'Gris';
                                  _selectBlanco = true;
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Gris',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectBlanco
                                  ? 'assets/colors_uncheck/blanco.svg'
                                  : 'assets/colors_active/active-blanco.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = !_selectBlanco;
                                  colorHead.setHeadColor = 'Blanco';
                                  _selectNegro = true;
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Blanco',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 36.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 64.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                              icon: SvgPicture.asset(_selectNegro
                                  ? 'assets/colors_uncheck/negro.svg'
                                  : 'assets/colors_active/active-negro.svg'),
                              onPressed: () {
                                setState(() {
                                  _selectAmarillo = true;
                                  _selectNaranja = true;
                                  _selectRojo = true;
                                  _selectVioleta = true;
                                  _selectAzul = true;
                                  _selectVerde = true;
                                  _selectCafe = true;
                                  _selectGris = true;
                                  _selectBlanco = true;
                                  _selectNegro = !_selectNegro;
                                  colorHead.setHeadColor = 'Negro';
                                });
                                Navigator.pop(context);
                              }),
                          Container(
                            child: Text(
                              'Negro',
                              style: themeCustom.textTheme.button,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
