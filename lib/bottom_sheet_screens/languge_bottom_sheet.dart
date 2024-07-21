import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home/my_theme_data.dart';
import '../provider/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container(
      color: provider.mode == ThemeMode.dark
          ? MyThemeData.primaryDark
          : MyThemeData.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              context.setLocale(Locale("ar"));

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "arabic".tr(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: provider.mode == ThemeMode.light
                          ? Colors.black
                          : Colors.white),
                ),
                context.locale == Locale("ar")
                    ? Icon(
                        Icons.done,
                        size: 35,color: provider.mode==ThemeMode.light?Colors.black:Colors.white,
                      )
                    : SizedBox(),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              context.setLocale(Locale("en"));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "english".tr(),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: provider.mode == ThemeMode.light
                          ? Colors.black
                          : Colors.white),
                ),
                context.locale == Locale("en")
                    ? Icon(
                        Icons.done,
                        size: 35,color: provider.mode==ThemeMode.light?Colors.black:Colors.white,
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
