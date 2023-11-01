import 'package:flutter/material.dart';
import 'package:github_analysis/providers/language_provider.dart';
import 'package:provider/provider.dart';


import '../l10n/en.dart';
import '../l10n/pt.dart';

String tl(String key, BuildContext context) {
  switch (Provider.of<LanguageProvider>(context).language.languageCode) {
    case 'pt':
      return pt[key] ?? key;
    case 'en':
      return en[key] ?? key;
    default:
      return pt[key] ?? key;
  }
}
