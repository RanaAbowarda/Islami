import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:islami/provider/ahadeth_provider.dart';
import 'package:provider/provider.dart';

import '../../provider/my_provider.dart';

class HadethTab extends StatelessWidget {
  HadethTab({super.key});
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
        create: (context) => AhadethProvider(),
        builder: (context, child) {
          var pro = Provider.of<AhadethProvider>(context);
          if (pro.allAhadeth.isEmpty) {
            pro.readHadeth();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/hadeth_logo.png",
                height: 219,
              ),
              Divider(
                color: provider.mode == ThemeMode.dark
                    ? MyThemeData.secondaryYellow
                    : MyThemeData.primaryColor,
                thickness: 3,
              ),
              Text(
                'ahadeth'.tr(),
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              Divider(
                thickness: 3,
                color: provider.mode == ThemeMode.dark
                    ? MyThemeData.secondaryYellow
                    : MyThemeData.primaryColor,
              ),
              Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, HadethDetails.routeName,
                                arguments: pro.allAhadeth[index]);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(pro.allAhadeth[index].title,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: provider.mode == ThemeMode.dark
                                            ? Colors.white
                                            : Colors.black)),
                          ),
                        );
                      },
                      itemCount: pro.allAhadeth.length)),
            ],
          );
        });
  }
}
