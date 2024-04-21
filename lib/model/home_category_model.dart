import 'package:flutter_tasarim_1/model/products_model.dart';

class HomeCategoryModel{
  //Ürün Kategori Başlığı
  String categoryTitle;
  //Ürünler Modelini içeren bir de liste tanımlayalım. Çünkü kategoriler içinde ürünleri gösteren bir listedir.
  List<ProductsModel> products;

  HomeCategoryModel({required this.categoryTitle, required this.products});
}