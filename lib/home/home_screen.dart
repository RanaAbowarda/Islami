import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/home/home_tabs/hadeth.dart';
import 'package:islami/home/home_tabs/quran.dart';
import 'package:islami/home/home_tabs/radio.dart';
import 'package:islami/home/home_tabs/sebha.dart';
import 'package:islami/home/home_tabs/setting.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int selectedIndex = 0;

  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.mode==ThemeMode.dark?"assets/images/dark_bg.png":
              "assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("appBarTitle".tr(),
            style:Theme.of(context).textTheme.bodyLarge,
              ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (Value) {
            selectedIndex = Value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: (Icon(Icons.settings)),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
              label: "",
            ),

          ],
        ),
        body:tabs[selectedIndex] ,
      ),
    );
  }
  List<Widget>tabs=[
    SettingTab(),
    RadioTab(),
    SebhaTab(),
    HadethTab(),
    QuranTab(),

  ];
}
