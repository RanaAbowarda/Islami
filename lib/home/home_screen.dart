import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/home_tabs/hadeth.dart';
import 'package:islami/home/home_tabs/quran.dart';
import 'package:islami/home/home_tabs/radio.dart';
import 'package:islami/home/home_tabs/sebha.dart';
import 'package:islami/home/home_tabs/setting.dart';

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
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("إسلامي",
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (Value) {
            selectedIndex = Value;
            setState(() {});
          },
          type: BottomNavigationBarType.shifting,
          backgroundColor: Color(0xffB7935F),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: (Icon(Icons.settings)),
              label: "",
              backgroundColor: Color(0xffB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
              label: "",
              backgroundColor: Color(0xffB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
              label: "",
              backgroundColor: Color(0xffB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
              label: "",
              backgroundColor: Color(0xffB7935F),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
              label: "",
              backgroundColor: Color(0xffB7935F),
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
