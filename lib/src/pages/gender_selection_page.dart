import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kunturapp/src/providers/gender_selection_provider.dart';
import 'package:kunturapp/src/theme/theme.dart';
import 'package:provider/provider.dart';

class GenderSelectionPage extends StatefulWidget {
  @override
  _GenderSelectionPageState createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  bool _selectActitis = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9fafb),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Consumer<GenderSelection>(
            builder: (context, genderSelection, _) => Column(
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
                          'Seleccionar Genero',
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
                          color:
                              _selectActitis ? Color(0xfff3f2ff) : Colors.white,
                          border: Border.all(
                              color: _selectActitis
                                  ? Color(0xff3a32ed)
                                  : Colors.grey[200]),
                          borderRadius: BorderRadius.circular(7.0)),
                      child: ListTile(
                        title: Text('Actitis',
                            style: themeCustom.textTheme.headline2.copyWith(
                                color: _selectActitis
                                    ? Color(0xff3a32ed)
                                    : Colors.black)),
                        trailing: IconButton(
                            icon: Icon(
                              _selectActitis
                                  ? CupertinoIcons.circle_filled
                                  : CupertinoIcons.circle,
                              color: _selectActitis
                                  ? Color(0xff3a32ed)
                                  : Color(0xffc4cdd5),
                            ),
                            onPressed: () {}),
                        onTap: () {
                          setState(() {
                            _selectActitis = !_selectActitis;
                            genderSelection.setGenderSelection = 'Actitis';
                          });
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
