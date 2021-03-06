import 'package:app/all_translations.dart';
import 'package:app/screens/home_page.dart';
import 'package:app/utils/authentication.dart';
import 'package:flutter/material.dart';

import 'auth_dialog.dart';

class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({
    Key key,
  }) : super(key: key);

  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

/*              userEmail == null
                  ? Container(
                      width: double.maxFinite,
                      child: FlatButton(
                        color: Colors.black,
                        hoverColor: Colors.blueGrey[800],
                        highlightColor: Colors.blueGrey[700],
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AuthDialog(),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          child: Text(
                            allTranslations.text('sign_in'),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              imageUrl != null ? NetworkImage(imageUrl) : null,
                          child: imageUrl == null
                              ? Icon(
                                  Icons.account_circle,
                                  size: 40,
                                )
                              : Container(),
                        ),
                        SizedBox(width: 10),
                        Text(
                          name ?? userEmail,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        )
                      ],
                    ),
              SizedBox(height: 20),
              userEmail != null
                  ? Container(
                      width: double.maxFinite,
                      child: FlatButton(
                        color: Colors.black,
                        hoverColor: Colors.blueGrey[800],
                        highlightColor: Colors.blueGrey[700],
                        onPressed: _isProcessing
                            ? null
                            : () async {
                                setState(() {
                                  _isProcessing = true;
                                });
                                await signOut().then((result) {
                                  print(result);
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      fullscreenDialog: true,
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                }).catchError((error) {
                                  print('Sign Out Error: $error');
                                });
                                setState(() {
                                  _isProcessing = false;
                                });
                              },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 15.0,
                            bottom: 15.0,
                          ),
                          child: _isProcessing
                              ? CircularProgressIndicator()
                              : Text(
                            allTranslations.text('sign_out'),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    )
                  : Container(),
              userEmail != null ? SizedBox(height: 20) : Container(),*/

              InkWell(
                onTap: () {},
                child: Text(
                  allTranslations.text('home'),
                  style: TextStyle(color: Color(0xff5f687b), fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  allTranslations.text('product'),
                  style: TextStyle(color: Color(0xff5f687b), fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  allTranslations.text('contact_us'),
                  style: TextStyle(color: Color(0xff5f687b), fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  allTranslations.text('about_us'),
                  style: TextStyle(color: Color(0xff5f687b), fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Divider(
                  color: Colors.grey[400],
                  thickness: 1,
                ),
              ),
              InkWell(
                onTap: () {
                  _changeLanguage(context,changeLanguage());
                },
                child: Text(
                  checkLanguage(),
                  style: TextStyle(color: Color(0xff5f687b), fontSize: 18),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2020 | mrflutter',
                    style: TextStyle(
                      color: Colors.blueGrey[300],
                      fontSize: 14,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  _changeLanguage(BuildContext context,String lang) async {
    await allTranslations.setNewLanguage(lang);
    Navigator.pushReplacementNamed(context, '/');
  }

  checkLanguage() {
    return allTranslations.currentLanguage == 'fa'
        ? 'تغییر زبان'
        : 'change language';
  }

  changeLanguage() {
    return allTranslations.currentLanguage == 'fa'
        ? 'en'
        : 'fa';
  }
}
