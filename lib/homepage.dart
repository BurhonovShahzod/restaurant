import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:restaruentmenuflutter/dishes_page.dart';
import 'package:restaruentmenuflutter/lang.dart';
import 'package:restaruentmenuflutter/lang_provider.dart';
import 'package:restaruentmenuflutter/saladespage.dart';

import 'favourite_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void initState() {
    super.initState();
  }
  void initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    FlutterNativeSplash.remove();
  }

  List<Widget> _pages = [
    FavouritePage(),
    DishesPage(),
    SaladesPage(),
    SaladesPage(),
    SaladesPage(),
  ];

  List<Lang> langs = [
    Lang("uz", true),
    Lang("ru", false),
    Lang("en", false),
  ];
  int activeLangIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return myMenu(constraints);
            },
          ),
          Expanded(
              child: Navigator(
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) => _pages[_selectedIndex]),
          ))
        ],
      ),
    );
  }

  Widget myMenu(BoxConstraints constraints) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: IntrinsicHeight(
          child: NavigationRail(
            indicatorColor: Colors.transparent,
            minWidth: 52,
            useIndicator: false,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            groupAlignment: 0.5,
            selectedLabelTextStyle:
                TextStyle(color: Colors.white, fontSize: 24),
            unselectedLabelTextStyle:
                TextStyle(color: Colors.white60, fontSize: 18),
            labelType: NavigationRailLabelType.all,
            backgroundColor: Color(0xff2A5270),
            selectedIndex: _selectedIndex,
            leading: langBuild(),
            destinations: [
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                    quarterTurns: 0,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    )),
              ),
              NavigationRailDestination(
                  icon: SizedBox(),
                  label: RotatedBox(
                    quarterTurns: -1,
                    child: Text("meals".tr()),
                  )),
              NavigationRailDestination(
                  icon: SizedBox(),
                  label: RotatedBox(
                    quarterTurns: -1,
                    child: Text("salads".tr()),
                  )),
              NavigationRailDestination(
                  icon: SizedBox(),
                  label: RotatedBox(
                    quarterTurns: -1,
                    child: Text("drinks".tr()),
                  )),
              NavigationRailDestination(
                  icon: SizedBox(),
                  label: RotatedBox(
                    quarterTurns: -1,
                    child: Text("fast_food".tr()),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void setCurrentLangButton() {
    switch (context.locale) {
      case "uz_UZ":
        {
          langs.forEach((element) {
            if (element.name == "uz") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
      case "ru_RU":
        {
          langs.forEach((element) {
            if (element.name == "ru") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
          break;
        }
      case "en_US":
        {
          langs.forEach((element) {
            if (element.name == "en") {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
          break;
        }
    }
  }

  Widget langBuild() {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    setCurrentLangButton();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 120,
        ),
        ToggleButtons(
          borderColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          selectedColor: Colors.transparent,
          splashColor: Colors.transparent,
          direction: Axis.vertical,
          children: <Widget>[
            langButton(langs[0]),
            langButton(langs[1]),
            langButton(langs[2]),
          ],
          onPressed: (int i) {
            setState(() {
              langs.forEach((e) {
                e.isActive = false;
              });
              switch (i) {
                case 0:
                  {
                    var newLocale = Locale("uz", "UZ");
                    context.setLocale(newLocale);
                    langProvider.langChanged();
                  }
                  break;
                case 1:
                  {
                    context.setLocale(Locale("ru", "RU"));
                    langProvider.langChanged();
                  }
                  break;
                case 2:
                  {
                    context.setLocale(Locale("en", "US"));
                    langProvider.langChanged();
                  }
                  break;
              }
              langs[i].isActive = true;
            });
          },
          isSelected: langs.map((e) => e.isActive).toList(),
        )
      ],
    );
  }

  Widget langButton(Lang lang) {
    return Container(
      width: 40,
      height: 40,
      child: Center(
          child: Text(
        lang.name,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      )),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: lang.isActive ? Color(0xff206498) : Color(0xff2A5270),
      ),
    );
  }
}
