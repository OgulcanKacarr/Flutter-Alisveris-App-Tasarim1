import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/model/products_model.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';
import 'package:grock/grock.dart';

class CustomProductsCardWidgets extends StatelessWidget {
  //Card'da gösterilecek ürünleri alıyoruz
  ProductsModel productsModel;

  CustomProductsCardWidgets({required this.productsModel});

  @override
  Widget build(BuildContext context) {
    return GrockContainer(
      width: 150,
      decoration: BoxDecoration(
        color: Constant.white,
        borderRadius: 10.allBR,
        boxShadow: [
          BoxShadow(color: Colors.black26, blurRadius: 8),
        ],
      ),
      child: IntrinsicHeight(
        child: Column(
          //hizalamaya yatay şekilde baştan başla
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Görselleri yükle
            Image.asset(
              productsModel.image,
              fit: BoxFit.contain,
            ),
            //Yazılar
            Padding(
              padding: 10.horizontalP,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      productsModel.title,
                      style: TextStyle(fontSize: 15, color: Constant.black),
                    ),
                  ),
                  //kaydetme görseli için kontrol yapmamız gerekiyor
                  productsModel.isSaved
                      ? Icon(
                    Icons.bookmark_border_rounded,
                    color: Constant.black,
                  )
                      : Icon(
                    Icons.bookmark,
                    color: Constant.orange,
                  )
                ],
              ),
            ),
            //Fiyat
            Padding(
              padding: [10, 5].horizontalAndVerticalP,
              child: Text(
                "\$${productsModel.price.toString()}",
                style: TextStyle(
                    color: Constant.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
            //Star Değeri
            Padding(
              padding: [10, 0].horizontalAndVerticalP,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star_rate_rounded,color: Constant.orange,size: 22,),
                  Text(
                    "${productsModel.star}",
                    style: TextStyle(
                        color: Constant.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
