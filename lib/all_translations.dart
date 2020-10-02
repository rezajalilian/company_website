import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:shared_preferences/shared_preferences.dart';

const String _storageKey = "appliation_key";
const List<String> _supportedLanguages = ['en' , 'fa'];
Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class GlobalTranslations {
  Locale _locale;
  static Map<dynamic , dynamic> _localizedValues;

  supportedLocales() => _supportedLanguages.map<Locale>((lang) => new Locale(lang , ''));

  String text(String key) {
    return (_localizedValues == null || _localizedValues[key] == null) ? '** $key not found' : _localizedValues[key];
  }

  get currentLanguage => _locale == null ? '' : _locale.languageCode;

  get locale => _locale;

  Future<Null> init([String defaultLanguage = 'fa']) async {
    if(_locale == null) {
      String language = await _getApplicationSavedInformation('currentLanguage');
      await setNewLanguage(language == '' ? defaultLanguage : language);
    }
    return null;
  }


  Future<String> _getApplicationSavedInformation(String name) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.getString(_storageKey + name ) ?? '';
  }

  Future<bool> _setApplicationSavedInformation(String name , String value) async {
    final SharedPreferences prefs = await _prefs;

    return prefs.setString(_storageKey + name  , value);
  }

  Future<Null> setNewLanguage(String newLanguage) async {

    _locale = Locale(newLanguage,"");

    String jsonContent = await rootBundle.loadString("locale/i18n_${locale.languageCode}.json");
    _localizedValues = json.decode(jsonContent);


    await _setApplicationSavedInformation("currentLanguage", newLanguage);

    return null;
  }

  static final GlobalTranslations _translations = new GlobalTranslations._internal();

  factory GlobalTranslations() {
    return  _translations;
  }

  GlobalTranslations._internal();
}


GlobalTranslations allTranslations = new GlobalTranslations();