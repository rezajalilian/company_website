import 'package:app/all_translations.dart';
import 'package:app/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:map_launcher/map_launcher.dart';

class ContactForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return ResponsiveWidget.isSmallScreen(context) ?
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10 , right: 10),
          child: Container(
            width: double.infinity,
            height: 430,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
              //  border: Border.all(color: Colors.grey.withOpacity(0.3) , width: 1,)
            ),
            child:  Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20 , right: 5 , left: 5 , bottom: 20),
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            cursorWidth: 1.5,
                            enabled: true, // to trigger disabledBorder
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              filled: true,
                              fillColor: Color(0xFFFfffff),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(width: 1,)
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(width: 1,color: Colors.redAccent)
                              ),
                              hintText: allTranslations.text('p_6_email'),
                              hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                            ),
                            obscureText: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return  allTranslations.text('p_6_error');
                              }
                              return null;
                            },
                          ),

                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20 , right: 5 , left: 5 , bottom: 20),
                          child: TextFormField(
                            cursorColor: Colors.grey,
                            cursorWidth: 1.5,
                            enabled: true, // to trigger disabledBorder
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              filled: true,
                              fillColor: Color(0xFFFfffff),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(width: 1,)
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                  borderSide: BorderSide(width: 1,color: Colors.redAccent)
                              ),
                              hintText: allTranslations.text('p_6_name'),
                              hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                            ),
                            obscureText: false,
                            validator: (value) {
                              if (value.isEmpty) {
                                return allTranslations.text('p_6_error');
                              }
                              return null;
                            },
                          ),
                        ),

                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20 , right: 5 , left: 5 , bottom: 20),
                    child: TextFormField(

                      maxLines: 5,
                      cursorColor: Colors.grey,
                      cursorWidth: 1.5,
                      enabled: true, // to trigger disabledBorder
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        filled: true,
                        fillColor: Color(0xFFFfffff),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            borderSide: BorderSide(width: 1,)
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                          borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            borderSide: BorderSide(width: 1,color: Colors.redAccent)
                        ),
                        hintText: allTranslations.text('p_6_massage'),
                        hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                      ),
                      obscureText: false,
                      validator: (value) {
                        if (value.isEmpty) {
                          return allTranslations.text('p_6_error');
                        }
                        return null;
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 30 , top: 30),
                      child: RaisedButton(
                        padding: const EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        color: Color(0xff47B2E4),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            // If the form is valid, display a Snackbar.
                            Scaffold.of(context)
                                .showSnackBar(SnackBar(content: Text('Processing Data')));
                          }
                        },
                        child: Text(allTranslations.text('p_6_btn_send') , style: TextStyle(
                          fontSize: 15
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 10 , right: 10),
          child: Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
           //     border: Border.all(color: Colors.grey.withOpacity(0.3) , width: 1,)
            ),
            child: Column(
              children: [
                new Padding(
                  padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.location_on,
                          color: Color(0xff47B2E4),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(allTranslations.text('p_6_location') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                          Text(allTranslations.text('p_6_location_desc') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                        ],
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.email,
                          color: Color(0xff47B2E4),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(allTranslations.text('p_6_location_email') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                          Text(allTranslations.text('p_6_location_email_desc'), style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                        ],
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            shape: BoxShape.circle
                        ),
                        child: Icon(
                          Icons.call,
                          color: Color(0xff47B2E4),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(allTranslations.text('p_6_location_phone') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                          Text(allTranslations.text('p_6_location_phone_desc'), style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                        ],
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 10),

                )
              ],
            ),

          ),
        )
      ],
    )
    :
    Row(
      children: [
        Expanded(
            flex:2 ,
            child: Padding(
              padding: const EdgeInsets.only(left: 20 , right: 20),
              child: Container(
                width: double.infinity,
                height: 430,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                   // border: Border.all(color: Colors.grey.withOpacity(0.3) , width: 1,)
                ),
                child:  Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20 , right: 15 , left: 15 , bottom: 20),
                              child: TextFormField(
                                cursorColor: Colors.grey,
                                cursorWidth: 1.5,
                                enabled: true, // to trigger disabledBorder
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: Color(0xFFFfffff),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      borderSide: BorderSide(width: 1,)
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      borderSide: BorderSide(width: 1,color: Colors.redAccent)
                                  ),
                                  hintText: allTranslations.text('p_6_email'),
                                  hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                                ),
                                obscureText: false,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return  allTranslations.text('p_6_error');
                                  }
                                  return null;
                                },
                              ),

                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20 , right: 15 , left: 15 , bottom: 20),
                              child: TextFormField(
                                cursorColor: Colors.grey,
                                cursorWidth: 1.5,
                                enabled: true, // to trigger disabledBorder
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  filled: true,
                                  fillColor: Color(0xFFFfffff),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                                  ),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      borderSide: BorderSide(width: 1,)
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(3)),
                                    borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(3)),
                                      borderSide: BorderSide(width: 1,color: Colors.redAccent)
                                  ),
                                  hintText: allTranslations.text('p_6_name'),
                                  hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                                ),
                                obscureText: false,
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return allTranslations.text('p_6_error');
                                  }
                                  return null;
                                },
                              ),
                            ),

                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20 , right: 15 , left: 15 , bottom: 20),
                        child: TextFormField(

                          maxLines: 5,
                          cursorColor: Colors.grey,
                          cursorWidth: 1.5,
                          enabled: true, // to trigger disabledBorder
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10),
                            filled: true,
                            fillColor: Color(0xFFFfffff),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(width: 1,color: Color(0xff47B2E4)),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,)
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(3)),
                              borderSide: BorderSide(width: 1,color: Color(0xffced4da)),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                borderSide: BorderSide(width: 1,color: Colors.redAccent)
                            ),
                            hintText: allTranslations.text('p_6_massage'),
                            hintStyle: TextStyle(fontSize: 14,color: Color(0xFFB3B1B1)),
                          ),
                          obscureText: false,
                          validator: (value) {
                            if (value.isEmpty) {
                              return allTranslations.text('p_6_error');
                            }
                            return null;
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 15, top: 30),
                          child: RaisedButton(
                            padding: const EdgeInsets.all(8.0),
                            textColor: Colors.white,
                            color: Color(0xff47B2E4),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                // If the form is valid, display a Snackbar.
                                Scaffold.of(context)
                                    .showSnackBar(SnackBar(content: Text('Processing Data')));
                              }
                            },
                            child: Text(allTranslations.text('p_6_btn_send') , style: TextStyle(
                            ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
        ),
        Expanded(
            flex:1 ,
            child: Padding(
              padding: const EdgeInsets.only(left: 10 , right: 10),
              child: Container(
                width: double.infinity,
                height: 430,
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
              //      border: Border.all(color: Colors.grey.withOpacity(0.3) , width: 1,)
                ),
                child: Column(
                  children: [
                    new Padding(
                      padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.circle
                            ),
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xff47B2E4),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(allTranslations.text('p_6_location') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                              Text(allTranslations.text('p_6_location_desc') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.circle
                            ),
                            child: Icon(
                              Icons.email,
                              color: Color(0xff47B2E4),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(allTranslations.text('p_6_location_email') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                              Text(allTranslations.text('p_6_location_email_desc'), style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.circle
                            ),
                            child: Icon(
                              Icons.call,
                              color: Color(0xff47B2E4),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(allTranslations.text('p_6_location_phone') , style: TextStyle(fontFamily: 'Vazir' , fontSize: 19 , color: Color(0xff7a6960)),),
                              Text(allTranslations.text('p_6_location_phone_desc'), style: TextStyle(fontFamily: 'Vazir' , fontSize: 14 , color: Color(0xff949cac)),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    new Padding(
                      padding: EdgeInsets.only(left: 20 , right: 20 , top: 10 , bottom: 10),

                    )
                  ],
                ),

              ),
            )
        )
      ],
    )
    ;
  }
}
