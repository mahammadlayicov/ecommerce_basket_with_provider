import 'package:ecommerce_basket_app_with_provider/model/productModel.dart';
import 'package:flutter/material.dart';

class basketProvider extends ChangeNotifier {
  List<int> _products = [];
  List<int> get products => _products;
    bool isExist(int id) => _products.contains(id);

  void toggleFav(int id) {
    debugPrint("fav eklendi : ${_products.length}");
    _products.Exsist(id);
    notifyListeners();
  }

  void clearFav() {
    debugPrint("qutu bosaldi");
    _products.clear();
    notifyListeners();
  }
}

extension FavoritedNotifierX<T> on List {
  void Exsist(T value) {
    contains(value) ? remove(value) : add(value);
  }
}

