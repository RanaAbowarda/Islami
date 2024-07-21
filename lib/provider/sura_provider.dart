import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class SuraProvider extends ChangeNotifier{
  List<String>verses=[];
  loadSuraFile(int index)async{
    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>suraLines=sura.split("\n");
    print(suraLines);
    verses =suraLines;
    notifyListeners();

  }
}