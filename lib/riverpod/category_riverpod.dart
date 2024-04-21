import 'package:flutter/material.dart';

import '../model/home_category_model.dart';
import '../model/products_model.dart';

class CategoryRiverpod extends ChangeNotifier {
  //Kategorileri Oluşturalım

  //Hot Deals Kategorisi
  HomeCategoryModel hotDeals = HomeCategoryModel(
    categoryTitle: "Hot Deals",
    products: [
      ProductsModel(
          "assets/images/im_c1.png", "apple iMac 24", 1299, 4.9, false),
      ProductsModel(
          "assets/images/im_w1.png", "Apple Watch V1", 859, 4.4, true),
      ProductsModel(
          "assets/images/im_p1.png", "Apple iPhone 12 Series", 1199, 5.9, false)
    ],
  );

  //Most Popular Kategorisi
  HomeCategoryModel mostPopular = HomeCategoryModel(
    categoryTitle: "Most Popular",
    products: [
      ProductsModel(
          "assets/images/im_c2.png", "apple iMac 30", 1000, 4.9, true),
      ProductsModel(
          "assets/images/im_w2.png", "Apple Watch V2", 1859, 4.4, false),
      ProductsModel(
          "assets/images/im_p2.png", "Apple iPhone 14 Series", 1199, 5.9, true)
    ],
  );
}
