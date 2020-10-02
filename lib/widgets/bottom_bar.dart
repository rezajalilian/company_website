import 'package:app/all_translations.dart';
import 'package:app/widgets/bottom_bar_column.dart';
import 'package:app/widgets/info_text.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Color(0xffF3F4F6),
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: allTranslations.text('footer_aboute'),
                      s1:  allTranslations.text('footer_aboute_1'),
                      s2:  allTranslations.text('footer_aboute_1'),
                      s3:  allTranslations.text('footer_aboute_1'),
                    ),
                    BottomBarColumn(
                      heading:  allTranslations.text('footer_help'),
                      s1:  allTranslations.text('footer_help_1'),
                      s2:  allTranslations.text('footer_help_1'),
                      s3:  allTranslations.text('footer_help_1'),
                    ),
                    BottomBarColumn(
                      heading:  allTranslations.text('footer_social'),
                      s1:  allTranslations.text('footer_social_1'),
                      s2:  allTranslations.text('footer_social_2'),
                      s3:  allTranslations.text('footer_social_3'),
                    ),
                  ],
                ),
                Container(
                  color: Color(0xffF3F4F6),
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                InfoText(
                  type: allTranslations.text('footer_email_lable'),
                  text: allTranslations.text('footer_email'),
                ),
                SizedBox(height: 5),
                InfoText(
                  type: allTranslations.text('footer_address_lable'),
                  text: allTranslations.text('footer_address'),
                ),
                SizedBox(height: 20),
                Container(
                  color: Color(0xffd9dce2),
                  width: double.maxFinite,
                  height: 1,
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | MRFLUTTER',
                  style: TextStyle(
                    color: Color(0xff5f687b),
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomBarColumn(
                      heading: allTranslations.text('footer_aboute'),
                      s1:  allTranslations.text('footer_aboute_1'),
                      s2:  allTranslations.text('footer_aboute_1'),
                      s3:  allTranslations.text('footer_aboute_1'),
                    ),
                    BottomBarColumn(
                      heading:  allTranslations.text('footer_help'),
                      s1:  allTranslations.text('footer_help_1'),
                      s2:  allTranslations.text('footer_help_1'),
                      s3:  allTranslations.text('footer_help_1'),
                    ),
                    BottomBarColumn(
                      heading:  allTranslations.text('footer_social'),
                      s1:  allTranslations.text('footer_social_1'),
                      s2:  allTranslations.text('footer_social_2'),
                      s3:  allTranslations.text('footer_social_3'),
                    ),
                    Container(
                      color: Color(0xffF3F4F6),
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InfoText(
                          type: allTranslations.text('footer_email_lable'),
                          text: allTranslations.text('footer_email'),
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: allTranslations.text('footer_address_lable'),
                          text: allTranslations.text('footer_address'),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Color(0xffd9dce2),
                    width: double.maxFinite,
                    height: 0.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Copyright © 2020 | MRFLUTTER',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
