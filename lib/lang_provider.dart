import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Constants.dart';
class LangProvider extends ChangeNotifier {

  bool _isItemSelected = false;
  int selectedItemIndex = 0;

  void setItemIndex(value) {
    selectedItemIndex = value;
  }

  int getItemIndex() {
    return selectedItemIndex;
  }
  setFavList(List<int> indexes) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(
      Constants.FAV_MEALS,
      indexes.map((e) => e.toString()).toList(),
    );
    notifyListeners();
  }

  Future<int?> getFavourite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey(Constants.FAV_MEAL)) {
      return prefs.getInt(Constants.FAV_MEAL);
    }
  }

  void isItemSelected(value) {
    _isItemSelected = value;
    notifyListeners();
  }

  bool getItemSelected() {
    return _isItemSelected;
  }

  void langChanged() {
    notifyListeners();
  }

  Future<List<int>> getFavList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? res = prefs.getStringList(Constants.FAV_MEALS);
    if (res != null) {
      return res.map((e) => int.parse(e)).toList();
    }
    return List.empty();
  }


}