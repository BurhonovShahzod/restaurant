import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:restaruentmenuflutter/meal.dart';
import 'package:restaruentmenuflutter/product_type.dart';
import 'Salad.dart';


class DetailsPage extends StatefulWidget {
  final int selectedItemIndex;
  final ProductType productType;

   DetailsPage(this.selectedItemIndex, this.productType, {Key? key})
      : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/kuk.png"))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 12, top: 12),
                child: IconButton(
                  onPressed: () {
                      Navigator.pop(context);
                  },
                  icon: Icon(
                    size: 36,
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )),
            Expanded(child: myBody(context)),
          ],
        ),
      ),
    );
  }

  Widget myBody(context) {
    return Container(
      margin: EdgeInsets.only(top: 80, right: 30),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          details(getNels()[widget.selectedItemIndex]),
          Positioned(
              top: -72,
              right: -48,
              child: Hero(
                tag: "prodactImage",
                child: Image.asset(
                  getNels()[widget.selectedItemIndex].imageUrl!,
                  height: 220,
                ),
              )),
        ],
      ),
    );
  }

  List<Meal> getNels() {
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

  Widget details(Meal meal) {
    return Padding(
      padding: EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
          ),
          Text(
            meal.name!,

            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/ic_besh.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("20 min",
                      style: TextStyle(
                          color: Color(0xFF52616B),
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/ic_cal.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("5 min",
                      style: TextStyle(
                          color: Color(0xFF52616B),
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/Vector.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text("438 кал",
                      style: TextStyle(
                          color: Color(0xFF52616B),
                          fontWeight: FontWeight.w600)),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            getNels()[widget.selectedItemIndex].details!,
            style: TextStyle(fontSize: 16, height: 1.4),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
  Widget detailsSalad(Salad salad) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const SizedBox(height: 140),
          // Text(
          //   salad,
          //   style: TextStyle(
          //     fontSize: 26,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/ic_dish.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '20 мин',
                    style: const TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_cal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '5 инг',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_kkal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '438 кал',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            Meal.mealsRu[0].details!,
            style: const TextStyle(fontSize: 16, height: 1.4),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }
  Widget detailsDrink(Salad salad) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 140),
          // Text(
          //   meal.name!,
          //   style: TextStyle(
          //     fontSize: 26,
          //     fontWeight: FontWeight.w700,
          //   ),
          // ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/ic_dish.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '20 мин',
                    style: const TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_cal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '5 инг',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/ic_kkal.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '438 кал',
                    style: TextStyle(
                        color: Color(0xff52616B), fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            Meal.mealsRu[0].details!,
            style: const TextStyle(fontSize: 16, height: 1.4),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

  List<Meal> getMeals() {
    switch (context.locale.toString()) {
      case 'uz_UZ':
        {
          return Meal.mealsUz;
        }
      case 'ru_RU':
        {
          return Meal.mealsRu;
        }
      case 'en_US':
        {
          return Meal.mealsEn;
        }
      default:
        return Meal.mealsRu;
    }
  }

  List<Salad> getSalads() {
    switch (context.locale.toString()) {
      case 'uz_UZ':
        {
          return Salad.saladsRu;
        }
      case 'ru_RU':
        {
          return Salad.saladsRu;
        }
      case 'en_US':
        {
          return Salad.saladsRu;
        }
      default:
        return Salad.saladsRu;
    }
  }

}
