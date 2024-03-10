import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaruentmenuflutter/detailspage.dart';
import 'package:restaruentmenuflutter/lang_provider.dart';
import 'package:restaruentmenuflutter/meal.dart';
import 'package:restaruentmenuflutter/navigator_settings.dart';

import '../product_type.dart';

class ProductItem extends StatefulWidget {
  final meal;
  final bool isFavourite;
  final index;
  final ProductType productType;

  ProductItem(
    this.meal,
    this.index, {
    this.isFavourite = false,
    this.productType = ProductType.DISH,
    Key? key,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 48,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(widget.meal.bannerColor!),
            ),
            height: 360,
            width: 230,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 48,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 2,
                        height: 25,
                        color: Color(0xff00195C),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text("${widget.meal.type}"),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    maxLines: 3,
                    "${widget.meal.name}",
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF1E2022),
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${"cost".tr()}:",
                        style: TextStyle(
                            color: Color(0xFF52616B),
                            fontWeight: FontWeight.w600),
                      ),
                      Text("${widget.meal.cost}",
                          style: TextStyle(
                              color: Color(0xFF52616B),
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(
                    height: 12,
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
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              //agar selected bo'lsa remove()
                              // selected bo'lmasa add()
                              if (widget.isFavourite) {
                                removeFromFavorite(widget.index);
                              } else {
                                addToFavorite();
                              }
                            },
                            icon: widget.isFavourite
                                ? Icon(Icons.favorite_sharp)
                                : Icon(Icons.favorite_border_outlined)),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                               navigateToDetails();
                              });
                            },
                            child: Text(
                              "more".tr(),
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                backgroundColor: Color(0xFF175B8F)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: -24,
            right: -8,
            child: Hero(
              tag: "prodactImage1",
              child: Image.asset(
                "${widget.meal.imageUrl}",
                height: 170,
                width: 170,
              ),
            ))
      ],
    );
  }

  void addToFavorite() async {
    final mainProvider = Provider.of<LangProvider>(context, listen: false);

    List<int> favList = await mainProvider.getFavList();
    var newList = List.of(favList);
    if (!newList.contains(widget.index)) {
      newList.add(widget.index);
    }
    mainProvider.setFavList(newList);
  }

  void removeFromFavorite(index) async {
    final mainProvider = Provider.of<LangProvider>(context, listen: false);

    List<int> favList = await mainProvider.getFavList();
    var newList = List.of(favList);
    // [1,4,5,0] hozirgi list
    // [1,4,5] new list
    newList.remove(index);

    mainProvider.setFavList(newList);
  }
  void navigateToDetails() {
    switch (widget.productType) {
      case ProductType.DISH:
        {
          Navigator.of(context)
              .push(createRoute(DetailsPage(widget.index, ProductType.DISH)));
        }
        break;
      case ProductType.SALAD:
        {
          Navigator.of(context)
              .push(createRoute(DetailsPage(widget.index, ProductType.DISH)));
        }
        break;
      case ProductType.DRINK:
        {
          Navigator.of(context)
              .push(createRoute(DetailsPage(widget.index, ProductType.DISH)));
        }
        break;
    }
  }

}
