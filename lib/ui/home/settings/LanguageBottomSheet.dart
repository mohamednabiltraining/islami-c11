import 'package:flutter/material.dart';
import 'package:islami_c11/ui/providers/LocaleProvider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var localProvider = LocaleProvider.get(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                localProvider.changeLocale('en');
              },
              child: localProvider.currentLocale == 'en'
                  ? getSelectedItem(context, 'English')
                  : getUnselectedItem(context, 'English')),
          Divider(
            height: 24,
          ),
          InkWell(
              onTap: () {
                localProvider.changeLocale('ar');
              },
              child: localProvider.currentLocale == 'ar'
                  ? getSelectedItem(context, 'العربيه')
                  : getUnselectedItem(context, 'العربيه'))
        ],
      ),
    );
  }

  Widget getSelectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Theme.of(context).colorScheme.secondary),
          ),
          Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
          )
        ],
      ),
    );
  }

  Widget getUnselectedItem(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
