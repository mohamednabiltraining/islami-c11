import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String getFullPathImage(String imageName) {
  return "assets/images/$imageName";
}

AppLocalizations getTranslations(BuildContext context) {
  return AppLocalizations.of(context)!;
}
