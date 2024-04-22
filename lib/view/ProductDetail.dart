import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

import '../model/products_model.dart';
import '../themes/color/Constant.dart';

class ProductDetail extends ConsumerStatefulWidget {
  ProductsModel productsModel;

  ProductDetail({required this.productsModel});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductDetailState();
}

class _ProductDetailState extends ConsumerState<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: null,
          leading: IconButton(
            onPressed: () {
              Grock.back();
            },
            icon: Icon(
              Icons.arrow_back,
              size: 32,
              color: Constant.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border_rounded,
                size: 32,
                color: Constant.black,
              ),
            )
          ]),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Stack(children: [
      ListView(
        children: [
          SizedBox(
            height: 381,
            width: double.maxFinite,
            child: Hero(
              tag: widget.productsModel.image,
              child: Image.asset(
                widget.productsModel.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
              padding: [20, 20, 20, 0].paddingLTRB,
              child: Text(
                widget.productsModel.title,
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Constant.black),
              )),
          Padding(
            padding: [20, 20, 20, 0].paddingLTRB,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Colors",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Constant.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Wrap(
                  spacing: 15,
                  children: [
                    for (int i = 0; i < widget.productsModel.colors.length; i++)
                      Container(
                        width: 113,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: 10.allBR,
                          color: widget.productsModel.colors[i],
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
          Padding(
              padding: [20, 20, 20, 0].paddingLTRB,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productsModel.descTitle,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Constant.black),
                  ),
                  Text(
                    widget.productsModel.desc,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Padding(
                    padding: [20, 20, 20, 25].paddingLTRB,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "\$${widget.productsModel.price}",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),

                  ),
                  Padding(
                    padding: [20, 20, 20, 25].paddingLTRB,
                    child: Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                          ),
                          child: Text(
                            "Add to cart",
                            style: TextStyle(color: Constant.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              )),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [],
      )
    ]);
  }
}
