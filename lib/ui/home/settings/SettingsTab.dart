import 'package:flutter/material.dart';
import 'package:islami_c11/ui/home/settings/LanguageBottomSheet.dart';
import 'package:islami_c11/ui/home/settings/ThemeBottomSheet.dart';
import 'package:islami_c11/ui/providers/LocaleProvider.dart';
import 'package:islami_c11/ui/ui_utils.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var localeProvider = LocaleProvider.get(context);
    return Padding(
      padding: const EdgeInsets.only(top: 36.0, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            getTranslations(context).theme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).cardColor),
              child: Text(
                getTranslations(context).light,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
          Divider(
            height: 24,
          ),
          Text(
            getTranslations(context).language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Divider(
            height: 12,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Theme.of(context).colorScheme.secondary, width: 2),
                  borderRadius: BorderRadius.circular(18),
                  color: Theme.of(context).cardColor),
              child: Text(
                localeProvider.getCurrentLocaleText(),
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showThemeBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }

  void showLanguageBottomSheet(
    BuildContext context,
  ) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }
}
