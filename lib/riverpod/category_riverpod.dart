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
          image: "assets/images/im_c1.png",
          title: "apple iMac 24",
          price: 1299,
          star: 4.9,
          isSaved: false,
          colors: [Colors.orange,Colors.green,Colors.pinkAccent],
          desc: "Wait: Price Check on eBay — Try the eBay way—getting what you want doesn't have to be a splurge. Browse iMac 1. generation!",
      descTitle: "apple iMac 24"),
      ProductsModel(
          image: "assets/images/im_w1.png",
          title: "Apple Watch V1",
          price: 859,
          star: 4.4,
          isSaved: true,
          colors: [Colors.orange,Colors.green,Colors.pinkAccent],
          desc: "Wait: Price Check on eBay — Try the eBay way—getting what you want doesn't have to be a splurge. Browse iMac 1. generation!",
          descTitle: "apple iMac 24"),
      ProductsModel(
          image: "assets/images/im_p1.png",
          title: "Apple iPhone 12 Series",
          price: 1199,
          star: 5.9,
          isSaved: false,
          colors: [Colors.orange,Colors.green,Colors.pinkAccent],
          desc: "Wait: Price Check on eBay — Try the eBay way—getting what you want doesn't have to be a splurge. Browse iMac 1. generation!",
          descTitle: "apple iMac 24"),
    ],
  );

  //Most Popular Kategorisi
  HomeCategoryModel mostPopular = HomeCategoryModel(
    categoryTitle: "Most Popular",
    products: [
      ProductsModel(
          image: "assets/images/im_c2.png",
          title: "apple iMac 30",
          price: 1199,
          star: 5.9,
          isSaved: false,
          colors: [Colors.orange,Colors.green,Colors.pinkAccent],
          desc: "Wait: Price Check on eBay — Try the eBay way—getting what you want doesn't have to be a splurge. Browse iMac 1. generation!",
          descTitle: "apple iMac 24"),
    ],
  );
}
