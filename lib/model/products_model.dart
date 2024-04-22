import 'dart:ui';

class ProductsModel{
  //Üründe olan özellikler
  String image;
  String title;
  int price;
  double star;
  bool isSaved;

  String desc;
  String descTitle;
  List<Color> colors;

  ProductsModel({required this.image, required this.title, required this.price, required this.star, required this.isSaved, required this.desc, required this.colors, required this.descTitle});
}