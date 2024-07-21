import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/bottom_sheet_screens/bottom_sheet_theme.dart';
import 'package:islami/bottom_sheet_screens/languge_bottom_sheet.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "theme".tr(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ThemeBottomSheet();
                  });
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                provider.mode == ThemeMode.light ? "light".tr() : "dark".tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "language".tr(),
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageBottomSheet();
                  });
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                context.locale == Locale("ar") ? "arabic".tr() : "english".tr(),
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
