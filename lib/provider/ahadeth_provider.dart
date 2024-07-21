import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../models/hadeth_model.dart';

class AhadethProvider extends ChangeNotifier{
  List<HadethModel>allAhadeth=[];
  readHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value) {
      List<String> hadeth = value.split("#");
      for (int i = 0; i < hadeth.length; i++) {
        String firstHadeth = hadeth[i];
        List<String> hadethLines = firstHadeth.trim().split("\n");
        String title = hadethLines[0];
        hadethLines.removeAt(0);
        List<String> content = hadethLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(hadethModel.title);
      }
         notifyListeners();
    });
  }
}