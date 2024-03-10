import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaruentmenuflutter/homepage.dart';
import 'package:restaruentmenuflutter/lang_provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(

    EasyLocalization(supportedLocales: [
      Locale("en", "US"),
      Locale("ru", "RU"),
      Locale("uz", "UZ"),
    ],
        path: 'translation', child:MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_)=>LangProvider())
          ],
          child:MyApp() ,
        ) ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        home: HomePage()
    );
  }
}
