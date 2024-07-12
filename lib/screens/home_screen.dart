import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const  BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "!سلامي",style:GoogleFonts.elMessiri(),

          ),
        ),
      ),
    );
  }
}
