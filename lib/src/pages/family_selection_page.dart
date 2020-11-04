import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/providers/family_selection_provider.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

class FamilySelectionPage extends StatefulWidget {
  @override
  _FamilySelectionPageState createState() => _FamilySelectionPageState();
}

class _FamilySelectionPageState extends State<FamilySelectionPage> {
  bool _selectAccipitridae = false;
  bool _selectAlcedinidae = false;
  bool _selectAnatidae = false;
  bool _selectAramidae = false;
  bool _selectArdeidae = false;
  bool _selectBucconidae = false;
  bool _selectCapitonidae = false;
  bool _selectCathartidae = false;
  bool _selectCinclidae = false;
  bool _selectColumbidae = false;
  bool _selectCorvidae = false;
  bool _selectCotingidae = false;
  bool _selectCracidae = false;
  bool _selectCuculidae = false;
  bool _selectDonacobidae = false;
  bool _selectEmberizidae = false;
  bool _selectFalconidae = false;
  bool _selectFregatidae = false;
  bool _selectFringilidae = false;
  bool _selectGrallaridae = false;
  bool _selectIcteridae = false;
  bool _selectJacanidae = false;
  bool _selectLaridae = false;
  bool _selectMimidae = false;
  bool _selectMomotidae = false;
  bool _selectParulidae = false;
  bool _selectPicidae = false;
  bool _selectPipridae = false;
  bool _selectPsittacidae = false;
  bool _selectRallidae = false;
  bool _selectRamphastidae = false;
  bool _selectRecurvirostridae = false;
  bool _selectScolopacidae = false;
  bool _selectStrigidae = false;
  bool _selectThraupidae = false;
  bool _selectThreskiornithidae = false;
  bool _selectTrochilidae = false;
  bool _selectTroglodytidae = false;
  bool _selectTrogonidae = false;
  bool _selectTyrannidae = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9fafb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<FamilySelection>(
            builder: (context, familySelection, _) {
              return Column(
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
                            'Seleccionar Familia',
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
                  Column(
                    children: [
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectAccipitridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectAccipitridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/accipitridae_2020-09-06/accipitridae.png'),
                          title: Text('Accipitridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectAccipitridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectAccipitridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectAccipitridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectAccipitridae = !_selectAccipitridae;

                              familySelection.setFamilySelection =
                                  'Accipitridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectAlcedinidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectAccipitridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/alcedinidae_2020-10-29/alcedinidae.png'),
                          title: Text('Alcedinidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectAlcedinidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectAlcedinidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectAlcedinidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectAlcedinidae = !_selectAlcedinidae;

                              familySelection.setFamilySelection =
                                  'Alcedinidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectAnatidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectAnatidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/anatidae_2020-10-29/anatidae.png'),
                          title: Text('Anatidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectAnatidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectAnatidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectAnatidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectAnatidae = !_selectAnatidae;

                              familySelection.setFamilySelection = 'Anatidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectAramidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectAramidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/aramidae_2020-10-29/aramidae.png'),
                          title: Text('Aramidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectAramidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectAramidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectAramidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectAramidae = !_selectAramidae;

                              familySelection.setFamilySelection = 'Aramidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectArdeidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectArdeidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/ardeidae_2020-10-29/ardeidae.png'),
                          title: Text('Ardeidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectArdeidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectArdeidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectArdeidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectArdeidae = !_selectArdeidae;

                              familySelection.setFamilySelection = 'Ardeidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectBucconidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectBucconidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/bucconidae_2020-10-29/bucconidae.png'),
                          title: Text('Bucconidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectBucconidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectBucconidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectBucconidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectBucconidae = !_selectBucconidae;

                              familySelection.setFamilySelection = 'Bucconidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCapitonidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCapitonidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/capitonidae_2020-10-29/capitonidae.png'),
                          title: Text('Capitonidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCapitonidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCapitonidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCapitonidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCapitonidae = !_selectCapitonidae;

                              familySelection.setFamilySelection =
                                  'Capitonidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCathartidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCathartidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/cathartidae_2020-10-29/cathartidae.png'),
                          title: Text('Cathartidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCathartidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCathartidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCathartidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCathartidae = !_selectCathartidae;

                              familySelection.setFamilySelection =
                                  'Cathartidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCinclidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCinclidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/cinclidae_2020-10-29/cinclidae.png'),
                          title: Text('Cinclidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCinclidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCinclidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCinclidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCinclidae = !_selectCinclidae;

                              familySelection.setFamilySelection = 'Cinclidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectColumbidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectColumbidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/columbidae_2020-10-29/columbidae.png'),
                          title: Text('Columbidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectColumbidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectColumbidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectColumbidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectColumbidae = !_selectColumbidae;

                              familySelection.setFamilySelection = 'Columbidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCorvidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCorvidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/corvidae_2020-10-29/corvidae.png'),
                          title: Text('Corvidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCorvidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCorvidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCorvidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCorvidae = !_selectCorvidae;

                              familySelection.setFamilySelection = 'Corvidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCotingidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCotingidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/cotingidae_2020-10-29/cotingidae.png'),
                          title: Text('Cotingidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCotingidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCotingidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCotingidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCotingidae = !_selectCotingidae;

                              familySelection.setFamilySelection = 'Cotingidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCracidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCracidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/cracidae_2020-10-29/cracidae.png'),
                          title: Text('Cracidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCracidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCracidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCracidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCracidae = !_selectCracidae;

                              familySelection.setFamilySelection = 'Cracidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectCuculidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectCuculidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/cuculidae_2020-10-29/cuculidae.png'),
                          title: Text('Cuculidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectCuculidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectCuculidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectCuculidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectCuculidae = !_selectCuculidae;

                              familySelection.setFamilySelection = 'Cuculidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectDonacobidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectDonacobidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/donacobidae_2020-10-29/donacobidae.png'),
                          title: Text('Donacobidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectDonacobidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectDonacobidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectDonacobidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectDonacobidae = !_selectDonacobidae;

                              familySelection.setFamilySelection =
                                  'Donacobidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectEmberizidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectEmberizidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/emberizidae_2020-10-29/emberizidae.png'),
                          title: Text('Emberizidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectEmberizidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectEmberizidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectEmberizidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectEmberizidae = !_selectEmberizidae;

                              familySelection.setFamilySelection =
                                  'Emberizidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectFalconidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectFalconidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/falconidae_2020-10-29/falconidae.png'),
                          title: Text('Falconidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectFalconidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectFalconidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectFalconidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectFalconidae = !_selectFalconidae;

                              familySelection.setFamilySelection = 'Falconidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectFregatidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectFregatidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/fregatidae_2020-10-29/fregatidae.png'),
                          title: Text('Fregatidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectFregatidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectFregatidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectFregatidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectFregatidae = !_selectFregatidae;

                              familySelection.setFamilySelection = 'Fregatidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectFringilidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectFringilidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/fringilidae_2020-10-29/fringilidae.png'),
                          title: Text('Fringilidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectFringilidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectFringilidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectFringilidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectFringilidae = !_selectFringilidae;

                              familySelection.setFamilySelection =
                                  'Fringilidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectGrallaridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectGrallaridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/grallaridae_2020-10-29/grallaridae.png'),
                          title: Text('Grallaridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectGrallaridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectGrallaridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectGrallaridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectGrallaridae = !_selectGrallaridae;

                              familySelection.setFamilySelection =
                                  'Grallaridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectIcteridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectIcteridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/icteridae_2020-10-29/icteridae.png'),
                          title: Text('Icteridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectIcteridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectIcteridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectIcteridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectIcteridae = !_selectIcteridae;

                              familySelection.setFamilySelection = 'Icteridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectJacanidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectJacanidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/jacanidae_2020-10-29/jacanidae.png'),
                          title: Text('Jacanidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectJacanidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectJacanidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectJacanidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectJacanidae = !_selectJacanidae;

                              familySelection.setFamilySelection = 'Jacanidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectLaridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectLaridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/laridae_2020-10-29/laridae.png'),
                          title: Text('Laridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectLaridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectLaridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectLaridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectLaridae = !_selectLaridae;

                              familySelection.setFamilySelection = 'Laridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectMimidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectMimidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/mimidae_2020-10-29/mimidae.png'),
                          title: Text('Mimidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectMimidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectMimidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectMimidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectMimidae = !_selectMimidae;

                              familySelection.setFamilySelection = 'Mimidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectMomotidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectMomotidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/momotidae_2020-10-29/momotidae.png'),
                          title: Text('Momotidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectMomotidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectMomotidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectMomotidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectMomotidae = !_selectMomotidae;

                              familySelection.setFamilySelection = 'Momotidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectParulidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectParulidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/parulidae_2020-10-29/parulidae.png'),
                          title: Text('Parulidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectParulidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectParulidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectParulidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectParulidae = !_selectParulidae;

                              familySelection.setFamilySelection = 'Parulidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectPicidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectPicidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/picidae_2020-10-29/picidae.png'),
                          title: Text('Picidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectPicidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectPicidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectPicidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectPicidae = !_selectPicidae;

                              familySelection.setFamilySelection = 'Picidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectPipridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectPipridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/pipridae_2020-10-29/pipridae.png'),
                          title: Text('Pipridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectPipridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectPipridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectPipridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectPipridae = !_selectPipridae;

                              familySelection.setFamilySelection = 'Pipridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectPsittacidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectPsittacidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/psittacidae_2020-10-29/psittacidae.png'),
                          title: Text('Psittacidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectPsittacidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectPsittacidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectPsittacidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectPsittacidae = !_selectPsittacidae;

                              familySelection.setFamilySelection =
                                  'Psittacidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectRallidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectRallidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/rallidae_2020-10-29/rallidae.png'),
                          title: Text('Rallidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectRallidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectRallidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectRallidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectRallidae = !_selectRallidae;

                              familySelection.setFamilySelection = 'Rallidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectRamphastidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectRamphastidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/ramphastidae_2020-10-29/ramphastidae.png'),
                          title: Text('Ramphastidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectRamphastidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectRamphastidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectRamphastidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectRamphastidae = !_selectRamphastidae;

                              familySelection.setFamilySelection =
                                  'Ramphastidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectRecurvirostridae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectRecurvirostridae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/recurvirostridae_2020-10-29/recurvirostridae.png'),
                          title: Text('Recurvirostridae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectRecurvirostridae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectRecurvirostridae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectRecurvirostridae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectRecurvirostridae =
                                  !_selectRecurvirostridae;

                              familySelection.setFamilySelection =
                                  'Recurvirostridae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectScolopacidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectScolopacidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/scolopacidae_2020-10-29/scolopacidae.png'),
                          title: Text('Scolopacidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectScolopacidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectScolopacidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectScolopacidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectScolopacidae = !_selectScolopacidae;

                              familySelection.setFamilySelection =
                                  'Scolopacidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectStrigidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectStrigidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/strigidae_2020-10-29/strigidae.png'),
                          title: Text('Strigidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectStrigidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectStrigidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectStrigidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectStrigidae = !_selectStrigidae;

                              familySelection.setFamilySelection = 'Strigidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectThraupidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectThraupidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/thraupidae_2020-10-29/thraupidae.png'),
                          title: Text('Thraupidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectThraupidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectThraupidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectThraupidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectThraupidae = !_selectThraupidae;

                              familySelection.setFamilySelection = 'Thraupidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectThreskiornithidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectThreskiornithidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/threskiornithidae_2020-10-29/threskiornithidae.png'),
                          title: Text('Threskiornithidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectThreskiornithidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectThreskiornithidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectThreskiornithidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectThreskiornithidae =
                                  !_selectThreskiornithidae;

                              familySelection.setFamilySelection =
                                  'Threskiornithidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectTrochilidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectTrochilidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/trochilidae_2020-10-29/trochilidae.png'),
                          title: Text('Trochilidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectTrochilidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectTrochilidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectTrochilidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectTrochilidae = !_selectTrochilidae;

                              familySelection.setFamilySelection =
                                  'Trochilidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectTroglodytidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectTroglodytidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/troglodytidae_2020-10-29/troglodytidae.png'),
                          title: Text('Troglodytidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectTroglodytidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectTroglodytidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectTroglodytidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectTroglodytidae = !_selectTroglodytidae;

                              familySelection.setFamilySelection =
                                  'Troglodytidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectTrogonidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectTrogonidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/trogonidae_2020-10-29/trogonidae.png'),
                          title: Text('Trogonidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectTrogonidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectTrogonidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectTrogonidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectTrogonidae = !_selectTrogonidae;

                              familySelection.setFamilySelection = 'Trogonidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Container(
                        height: 74.0,
                        margin:
                            EdgeInsets.only(top: 41.0, left: 21.0, right: 21.0),
                        padding: EdgeInsets.only(top: 7.0),
                        decoration: BoxDecoration(
                            color: _selectTyrannidae
                                ? Color(0xfff3f2ff)
                                : Colors.white,
                            border: Border.all(
                                color: _selectTyrannidae
                                    ? Color(0xff3a32ed)
                                    : Colors.grey[200]),
                            borderRadius: BorderRadius.circular(7.0)),
                        child: ListTile(
                          leading: Image.asset(
                              'assets/siluets/tyrannidae_2020-10-29/tyrannidae.png'),
                          title: Text('Tyrannidae',
                              style: themeCustom.textTheme.headline2.copyWith(
                                  color: _selectTyrannidae
                                      ? Color(0xff3a32ed)
                                      : Colors.black)),
                          trailing: IconButton(
                              icon: Icon(
                                _selectTyrannidae
                                    ? CupertinoIcons.circle_filled
                                    : CupertinoIcons.circle,
                                color: _selectTyrannidae
                                    ? Color(0xff3a32ed)
                                    : Color(0xffc4cdd5),
                              ),
                              onPressed: () {}),
                          onTap: () {
                            setState(() {
                              _selectTyrannidae = !_selectTyrannidae;

                              familySelection.setFamilySelection = 'Tyrannidae';
                            });
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
