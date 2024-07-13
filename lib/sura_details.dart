import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
   SuraDetails({super.key});
  static const String routeName = "sura details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  @override
  List<String> verses=[];
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
    loadSuraFile(model.index);}
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
          title: Text(model.name,
              style: GoogleFonts.elMessiri(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              )),
        ),
        body: Card(
          margin: EdgeInsets.all(20),
          child: ListView.builder(itemBuilder: (context,index){
            return Text(verses[index],style: GoogleFonts.inder(fontSize:25,),
            textDirection: TextDirection.rtl,textAlign: TextAlign.start,);
          },itemCount: verses.length,),
        ),
      ),
    );
  }

  loadSuraFile(int index)async{
    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>suraLines=sura.split("\n");
    print(suraLines);
    verses=suraLines;
    setState(() {

    });
  }
}
