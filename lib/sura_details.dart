import 'package:flutter/material.dart';
import 'package:islami/models/sura_model.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/provider/sura_provider.dart';
import 'package:provider/provider.dart';


class SuraDetails extends StatelessWidget {
   SuraDetails({super.key});
  static const String routeName = "sura details";

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    var model=ModalRoute.of(context)?.settings.arguments as SuraModel;


    return ChangeNotifierProvider(create: (context)=>SuraProvider(),
      builder: (context,child) {
        var provider=Provider.of<SuraProvider>(context);
        if(provider.verses.isEmpty){
         provider.loadSuraFile(model.index);}
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(pro.mode==ThemeMode.dark?"assets/images/dark_bg.png":"assets/images/default_bg.png"),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(model.name,style:Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            body: Card(
              color: Theme.of(context).cardColor,
              margin: EdgeInsets.all(30),
              child: ListView.builder(itemBuilder: (context,index){
                return Text(provider.verses[index],style:Theme.of(context).textTheme.bodyMedium,
                  textDirection: TextDirection.rtl,textAlign: TextAlign.start,);
              },itemCount: provider.verses.length,),
            ),
          ),
        );
      },
    );
  }
}
