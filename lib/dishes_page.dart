
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaruentmenuflutter/lang_provider.dart';
import 'package:restaruentmenuflutter/meal.dart';
import 'package:restaruentmenuflutter/product_type.dart';
import 'package:restaruentmenuflutter/widgets/product_item.dart';



class DishesPage extends StatefulWidget {
  DishesPage({super.key});


  @override
  State<DishesPage> createState() => _DishesPageState();
}

class _DishesPageState extends State<DishesPage> {
  bool isMealSelected = false;

  @override
  Widget build(BuildContext context) {

    return Consumer<LangProvider>(
      builder: (context, data, child) {
        return SafeArea(
          child: Scaffold(body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return mainUI(constraints);
            },
          )),
        );
      },
    );
  }

  Widget mainUI(BoxConstraints constraints) {
    final  langProvider=Provider.of<LangProvider>(context,listen: false);
    print("CURRENT_WIDTH : ${constraints.maxWidth}");
    var axisCount = 1;
    var current = constraints.maxWidth;
    if (current <= 500) {
      axisCount = 1;
    } else if (current > 500 && current <= 750) {
      axisCount = 2;
    } else if (current > 750 && current <= 1000) {
      axisCount = 3;
    } else {
      axisCount = 4;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          "tittle".tr(),
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(
          height: 12,
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.only(top: 24, bottom: 24),
            scrollDirection: Axis.vertical,
            itemCount: getMels().length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2 / 1,
                crossAxisCount: axisCount,
                crossAxisSpacing: 10,
                mainAxisExtent: 360,
                mainAxisSpacing: 30),
            itemBuilder: (BuildContext context, int index) {
              return FutureBuilder(
                  future: getFavourites(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      if (snapshot.data.contains(index)) {
                        return ProductItem(
                          getMels()[index],
                          index,
                          isFavourite: true,
                          productType: ProductType.DISH,
                        );
                      } else {
                        return ProductItem(
                          getMels()[index],
                          index,
                          isFavourite: false,
                          productType: ProductType.DISH,
                        );
                      }
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                    // return ProductItem(getMeals()[index], index,
                    //     isFavourite: snapshot.data.contains(index));
                  });



            }
          ),
        ),
      ],
    );
  }

  List<Meal> getMels() {
    switch (context.locale.toString()) {
      case "uz_UZ":
        {
          return Meal.mealsUz;
        }
      case "ru_RU":
        {
          return Meal.mealsRu;
        }
      case "en_US":
        {
          return Meal.mealsEn;
        }
      default:
        return Meal.mealsRu;
    }
  }
  Future<List<int>> getFavourites() async {
    final mainProvider = Provider.of<LangProvider>(context, listen: false);
    return await mainProvider.getFavList();
  }

}
