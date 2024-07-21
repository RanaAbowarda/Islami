
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth_details.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:islami/provider/my_provider.dart';
import 'package:islami/sura_details.dart';
import 'package:provider/provider.dart';

void main() 
  async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  runApp( EasyLocalization(
    supportedLocales: [Locale('en'), Locale('ar')],
    startLocale:Locale('ar') ,
    path: 'assets/translations', // <-- change the path of the translation files
    child: ChangeNotifierProvider(create: (context)=>MyProvider(),
        child: MyApp()),
  ));
}
class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: provider.mode,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
    );
  }
}
