import 'package:flutter/material.dart';
import 'package:github_analysis/l10n/l10n.dart';

class LanguageProvider extends ChangeNotifier {
  Locale language = L10n.all[0];

  setLanguage(String code) {
    language = L10n.all.firstWhere((element) => element.languageCode == code);
    notifyListeners();
  }
}