import 'package:flutter/material.dart';
import 'package:islami_c11/ui/home/settings/LanguageBottomSheet.dart';
import 'package:islami_c11/ui/home/settings/ThemeBottomSheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 36.0, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Theme",
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
                "Light",
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
            "Language",
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
                "English",
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
