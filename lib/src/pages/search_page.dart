import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kunturapp/src/pages/back_color_selection_page.dart';
import 'package:kunturapp/src/pages/beak_color_selection_page.dart';
import 'package:kunturapp/src/pages/belly_color_selection_page.dart';
import 'package:kunturapp/src/pages/chest_color_selection_page.dart';
import 'package:kunturapp/src/pages/family_selection_page.dart';
import 'package:kunturapp/src/pages/foots_color_selection_page.dart';

import 'package:kunturapp/src/pages/head_color_selection_page.dart';
import 'package:kunturapp/src/pages/search_result_page.dart';
import 'package:kunturapp/src/pages/tail_color_selection_page.dart';
import 'package:kunturapp/src/pages/wings_color_selection_page.dart';
import 'package:kunturapp/src/providers/color_selection_back_provider.dart';
import 'package:kunturapp/src/providers/color_selection_beak_provider.dart';
import 'package:kunturapp/src/providers/color_selection_belly_provider.dart';
import 'package:kunturapp/src/providers/color_selection_chest_provider.dart';
import 'package:kunturapp/src/providers/color_selection_foots_provider.dart';
import 'package:kunturapp/src/providers/color_selection_head_provider.dart';
import 'package:kunturapp/src/providers/color_selection_tail_provider.dart';
import 'package:kunturapp/src/providers/color_selection_wings_provider.dart';
import 'package:kunturapp/src/providers/family_selection_provider.dart';

import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Set<String> filters = <String>{};
  List<String> filtros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff9fafb),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 46.0),
                      child: Text(
                        'Búsqueda Avanzada',
                        style: themeCustom.textTheme.headline1,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(top: 48.0, left: 5.0),
                        child: Text(
                          'Reiniciar',
                          style: themeCustom.textTheme.headline2
                              .copyWith(color: Color(0xff1858e8)),
                        ),
                      ),
                      onTap: _clear,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 42),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0))),
                child: Column(
                  children: [
                    Consumer<FamilySelection>(
                      builder: (context, familySelection, _) {
                        if (familySelection != null) {
                          filters.add(familySelection.getFamilySelection);
                        } else {
                          filters.remove(familySelection.getFamilySelection);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Familia',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20, bottom: 16.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                          familySelection.getFamilySelection),
                                    ),
                                    if (familySelection.getFamilySelection ==
                                        'Accipitridae')
                                      Image.asset(
                                        'assets/siluets/accipitridae_2020-09-06/accipitridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Alcedinidae')
                                      Image.asset(
                                        'assets/siluets/alcedinidae_2020-10-29/alcedinidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Anatidae')
                                      Image.asset(
                                        'assets/siluets/anatidae_2020-10-29/anatidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Aramidae')
                                      Image.asset(
                                        'assets/siluets/aramidae_2020-10-29/aramidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Ardeidae')
                                      Image.asset(
                                        'assets/siluets/ardeidae_2020-10-29/ardeidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Bucconidae')
                                      Image.asset(
                                        'assets/siluets/bucconidae_2020-10-29/bucconidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Capitonidae')
                                      Image.asset(
                                        'assets/siluets/capitonidae_2020-10-29/capitonidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Cathartidae')
                                      Image.asset(
                                        'assets/siluets/cathartidae_2020-10-29/cathartidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Cinclidae')
                                      Image.asset(
                                        'assets/siluets/cinclidae_2020-10-29/cinclidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Columbidae')
                                      Image.asset(
                                        'assets/siluets/columbidae_2020-10-29/columbidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Corvidae')
                                      Image.asset(
                                        'assets/siluets/corvidae_2020-10-29/corvidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Cotingidae')
                                      Image.asset(
                                        'assets/siluets/cotingidae_2020-10-29/cotingidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Cracidae')
                                      Image.asset(
                                        'assets/siluets/cracidae_2020-10-29/cracidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Cuculidae')
                                      Image.asset(
                                        'assets/siluets/cuculidae_2020-10-29/cuculidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Donacobidae')
                                      Image.asset(
                                        'assets/siluets/donacobidae_2020-10-29/donacobidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Emberizidae')
                                      Image.asset(
                                        'assets/siluets/emberizidae_2020-10-29/emberizidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Falconidae')
                                      Image.asset(
                                        'assets/siluets/falconidae_2020-10-29/falconidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Fregatidae')
                                      Image.asset(
                                        'assets/siluets/fregatidae_2020-10-29/fregatidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Fringilidae')
                                      Image.asset(
                                        'assets/siluets/fringilidae_2020-10-29/fringilidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Grallaridae')
                                      Image.asset(
                                        'assets/siluets/grallaridae_2020-10-29/grallaridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Icteridae')
                                      Image.asset(
                                        'assets/siluets/icteridae_2020-10-29/icteridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Jacanidae')
                                      Image.asset(
                                        'assets/siluets/jacanidae_2020-10-29/jacanidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Laridae')
                                      Image.asset(
                                        'assets/siluets/laridae_2020-10-29/laridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Mimidae')
                                      Image.asset(
                                        'assets/siluets/mimidae_2020-10-29/mimidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Momotidae')
                                      Image.asset(
                                        'assets/siluets/momotidae_2020-10-29/momotidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Parulidae')
                                      Image.asset(
                                        'assets/siluets/parulidae_2020-10-29/parulidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Picidae')
                                      Image.asset(
                                        'assets/siluets/picidae_2020-10-29/picidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Pipridae')
                                      Image.asset(
                                        'assets/siluets/pipridae_2020-10-29/pipridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Psittacidae')
                                      Image.asset(
                                        'assets/siluets/psittacidae_2020-10-29/psittacidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Rallidae')
                                      Image.asset(
                                        'assets/siluets/rallidae_2020-10-29/rallidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Ramphastidae')
                                      Image.asset(
                                        'assets/siluets/ramphastidae_2020-10-29/ramphastidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Recurvirostridae')
                                      Image.asset(
                                        'assets/siluets/recurvirostridae_2020-10-29/recurvirostridae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Scolopacidae')
                                      Image.asset(
                                        'assets/siluets/scolopacidae_2020-10-29/scolopacidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Strigidae')
                                      Image.asset(
                                        'assets/siluets/strigidae_2020-10-29/strigidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Thraupidae')
                                      Image.asset(
                                        'assets/siluets/thraupidae_2020-10-29/thraupidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Threskiornithidae')
                                      Image.asset(
                                        'assets/siluets/threskiornithidae_2020-10-29/threskiornithidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Trochilidae')
                                      Image.asset(
                                        'assets/siluets/trochilidae_2020-10-29/trochilidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Troglodytidae')
                                      Image.asset(
                                        'assets/siluets/troglodytidae_2020-10-29/troglodytidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Trogonidae')
                                      Image.asset(
                                        'assets/siluets/trogonidae_2020-10-29/trogonidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    if (familySelection.getFamilySelection ==
                                        'Tyrannidae')
                                      Image.asset(
                                        'assets/siluets/tyrannidae_2020-10-29/tyrannidae.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FamilySelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    // Container(
                    //   width: MediaQuery.of(context).size.width * 0.85,
                    //   height: 2,
                    //   color: Color(0xfff9fafb),
                    // ),
                    // Consumer<GenderSelection>(
                    //   builder: (context, genderSelection, _) {
                    //     if (genderSelection != null) {
                    //       filters.add(genderSelection.getGenderSelection);
                    //     } else {
                    //       filters.remove(genderSelection.getGenderSelection);
                    //     }
                    //     return Container(
                    //       width: double.infinity,
                    //       height: 66.0,
                    //       child: Center(
                    //         child: ListTile(
                    //           dense: true,
                    //           title: Container(
                    //             margin: EdgeInsets.only(left: 20),
                    //             child: Text(
                    //               'Género',
                    //               style: themeCustom.textTheme.headline2,
                    //             ),
                    //           ),
                    //           subtitle: Container(
                    //               margin: EdgeInsets.only(left: 20),
                    //               child:
                    //                   Text(genderSelection.getGenderSelection)),
                    //           trailing: Container(
                    //             margin: EdgeInsets.only(right: 10),
                    //             child: Icon(
                    //               CupertinoIcons.forward,
                    //               color: Colors.black,
                    //             ),
                    //           ),
                    //           onTap: () {
                    //             Navigator.push(
                    //                 context,
                    //                 MaterialPageRoute(
                    //                     builder: (context) =>
                    //                         GenderSelectionPage()));
                    //           },
                    //         ),
                    //       ),
                    //     );
                    //   },
                    // ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorHead>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getHeadColor);
                        } else {
                          filters.remove(color.getHeadColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Cabeza',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getHeadColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getHeadColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getHeadColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            HeadColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Consumer<ColorBeak>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getBeakColor);
                        } else {
                          filters.remove(color.getBeakColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Pico',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getBeakColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBeakColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getBeakColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BeakColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorBack>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getBackColor);
                        } else {
                          filters.remove(color.getBackColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Espalda',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getBackColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBackColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getBackColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BackColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorWings>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getWingsColor);
                        } else {
                          filters.remove(color.getWingsColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Alas',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getWingsColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getWingsColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getWingsColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WingsColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorTail>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getTailColor);
                        } else {
                          filters.remove(color.getTailColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Cola',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getTailColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getTailColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getTailColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            TailColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorChest>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getChestColor);
                        } else {
                          filters.remove(color.getChestColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Pecho',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getChestColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getChestColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getChestColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ChestColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorBelly>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getBellyColor);
                        } else {
                          filters.remove(color.getBellyColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Vientre',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getBellyColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getBellyColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getBellyColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BellyColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Consumer<ColorFoots>(
                      builder: (BuildContext context, color, _) {
                        if (color != null) {
                          filters.add(color.getFootsColor);
                        } else {
                          filters.remove(color.getFootsColor);
                        }
                        return Container(
                          width: double.infinity,
                          height: 86.0,
                          child: Center(
                            child: ListTile(
                              dense: true,
                              title: Container(
                                margin: EdgeInsets.only(
                                    left: 20, bottom: 9.0, top: 17.0),
                                child: Text(
                                  'Patas',
                                  style: themeCustom.textTheme.headline2,
                                ),
                              ),
                              subtitle: Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    if (color.getFootsColor == 'Amarillo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/amarillo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Naranja')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/naranja.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Rojo')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/rojo.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Violeta')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/violeta.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Azul')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/azul.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Verde')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/verde.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Café')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/café.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Gris')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/gris.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Blanco')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/blanco.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      )
                                    else if (color.getFootsColor == 'Negro')
                                      SvgPicture.asset(
                                        'assets/colors_uncheck/negro.svg',
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    Container(
                                      margin: EdgeInsets.only(left: 8),
                                      child: Text(
                                        color.getFootsColor,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Icon(
                                  CupertinoIcons.forward,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FootsColorSelectionPage()));
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 2,
                      color: Color(0xfff9fafb),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 16.0, bottom: 11.0),
                        width: 333,
                        height: 50,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(27.0),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                (states) => Color(0xff1858e8)),
                          ),
                          onPressed: () {
                            setState(() {
                              filters.join();
                              final List<String> lista = filters.toList();
                              final List<String> strList = lista.sublist(1);
                              // if (strList.isNotEmpty) print('tap');
                              // print(strList.runtimeType);
                              // print(strList);
                              filtros = strList;
                            });
                            if (filtros.isNotEmpty) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SearchResultPage(strList: filtros)));
                            } else {
                              Navigator.of(context).pop();
                            }
                          },
                          child: Text(
                            'APLICAR FILTROS',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'GalanoGrotesque',
                              fontSize: 11,
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void _clear() {
    final fam = Provider.of<FamilySelection>(context, listen: false);
    final head = Provider.of<ColorHead>(context, listen: false);
    final beak = Provider.of<ColorBeak>(context, listen: false);
    final back = Provider.of<ColorBack>(context, listen: false);
    final wings = Provider.of<ColorWings>(context, listen: false);
    final tail = Provider.of<ColorTail>(context, listen: false);
    final chest = Provider.of<ColorChest>(context, listen: false);
    final belly = Provider.of<ColorBelly>(context, listen: false);
    final foots = Provider.of<ColorFoots>(context, listen: false);
    setState(() {
      fam.setFamilySelection = "";
      head.setHeadColor = "";
      beak.setBeakColor = "";
      back.setBackColor = '';
      wings.setWingsColor = '';
      tail.setTailColor = '';
      chest.setChestColor = '';
      belly.setBellyColor = '';
      foots.setFootsColor = '';
    });
    print('clear');
  }
}
