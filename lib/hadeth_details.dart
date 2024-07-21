import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/models/hadeth_model.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:provider/provider.dart';

import 'home/my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({super.key});
static const String routeName="hadeth details";
  @override

  Widget build(BuildContext context) {
    var provider=Provider.of<MyProvider>(context);

    var model=ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.mode==ThemeMode.dark?"assets/images/dark_bg.png":"assets/images/default_bg.png"),
        ),
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text(model.title,style:Theme.of(context).textTheme.bodyMedium,
             ),
        ),
        body: Card(
          color: Theme.of(context).cardColor,
          margin: EdgeInsets.all(30),
          child: ListView.builder(itemBuilder: (context,index){
            return Text(model.content[index],style: GoogleFonts.inder(fontSize:25,),
              textDirection: TextDirection.rtl,textAlign: TextAlign.start,);
          },itemCount: model.content.length,),
        ),
      ),
    );
  }

}


