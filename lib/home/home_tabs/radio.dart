import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 50,
        ),
        Text(
          "holyQuranRadio".tr(),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.skip_previous,
              size: 40,
              color: provider.mode == ThemeMode.dark
                  ? MyThemeData.secondaryYellow
                  : MyThemeData.primaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Icon(
                Icons.play_arrow,
                size: 70,
                color: provider.mode == ThemeMode.dark
                    ? MyThemeData.secondaryYellow
                    : MyThemeData.primaryColor,
              ),
            ),
            Icon(
              Icons.skip_next,
              size: 40,
              color: provider.mode == ThemeMode.dark
                  ? MyThemeData.secondaryYellow
                  : MyThemeData.primaryColor,
            )
          ],
        ),
      ],
    );
  }
}
