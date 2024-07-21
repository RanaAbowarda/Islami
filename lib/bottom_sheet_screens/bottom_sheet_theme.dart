import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../provider/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return Container(
      color:provider.mode==ThemeMode.dark?MyThemeData.primaryDark:MyThemeData.primaryColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.light);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("light".tr(),style: Theme.of(context).textTheme.bodyLarge?.copyWith
                  (color: provider.mode==ThemeMode.light?Colors.black:Colors.white),),
                provider.mode==ThemeMode.dark?
                    SizedBox():
                Icon(Icons.done,size: 35,color:provider.mode==ThemeMode.light?Colors.black:Colors.white ,),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("dark".tr(),style: Theme.of(context).textTheme.bodyLarge?.copyWith
                  (color:provider.mode==ThemeMode.dark?MyThemeData.secondaryYellow:Colors.white),),
                provider.mode==ThemeMode.light?
                SizedBox():
                Icon(Icons.done,size: 35,color:provider.mode==ThemeMode.dark?MyThemeData.secondaryYellow:Colors.white),

              ],
            ),
          ),
        ],
      ),
    );;
  }
}
