

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  @override
  int counter=0;
  int index=0;
  List<String>tasbeh=["سبحان الله","الحمد لله","لا اله الا الله ","الله أكبر "];
  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              RotatedBox(
                quarterTurns: counter,
                child: Image.asset(provider.mode==ThemeMode.dark?"assets/images/body_sebha_dark.png":
                  "assets/images/body_sebha_logo.png",
                  width: 232,
                  height: 234,
                ),
              ),
              Positioned(
                top:-75,
                child: Image.asset(provider.mode==ThemeMode.dark?"assets/images/head_sebha_dark.png":
                  "assets/images/head_sebha_logo.png",
                  width: 73,
                  height: 105,
                  alignment: Alignment.centerRight,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              "numberOfPraises".tr(),
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
               backgroundColor:provider.mode==ThemeMode.dark?MyThemeData.onSecondary:MyThemeData.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),

            ),
                    minimumSize: Size(69, 81)
                ),
                onPressed:counterIncrement,
                child: Text(
                  "$counter",
                  style: Theme.of(context).textTheme.bodyLarge
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  height: 51,
                  width: 137,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:provider.mode==ThemeMode.dark?MyThemeData.secondaryYellow:MyThemeData.primaryColor

                  ),
                  child: Text(
                    tasbeh[index],
                    style:Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
  counterIncrement(){
    setState(() {
    counter++;
    if(index==0&&counter==33){
      index=1;
      counter=0;
    }else if(index==1&&counter==33){
      index=2;
      counter=0;
    }else if(index==2&&counter==33){
      index=3;
      counter=0;
    }else if(index==3&&counter==34){
      index=0;
      counter=0;
    }return;
      });

  }
}
