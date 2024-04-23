import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/view/widgets/CheckoutPage.dart';
import 'package:grock/grock.dart';

import '../themes/color/Constant.dart';
import 'base_scaffold.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.white,
      body: _buildBody(),

    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: ListView(
        padding: [15, 30].horizontalAndVerticalP,
        children: [
          Container(
            padding: [18, 12].horizontalAndVerticalP,
            margin: 20.horizontalP,
            decoration: BoxDecoration(
              color: Constant.yellow,
              borderRadius: 10.allBR,
            ),
            child: Center(
                child: Text("Delivery for FREE until the end of the moth")),
          ),
          ListView.builder(
            padding: 25.onlyTopP,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                padding: 10.allP,
                decoration: BoxDecoration(
                  color: Constant.white,
                  borderRadius: 10.allBR,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 15,
                    )
                  ],
                ),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/im_p1.png", width: 110, height: 110,),
                      SizedBox(width: 15,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Iphone 18 Pro Max", style: TextStyle(
                              color: Constant.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),),
                          Text("\$788", style: TextStyle(color: Constant.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Text("Quantity", style: TextStyle(
                                  color: Constant.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13),),
                              SizedBox(width: 7,),
                              quantityButton(icon: Icons.remove, onTap: () {}),
                              Padding(padding: 7.horizontalP,
                                child: Text("1", style: TextStyle(fontSize: 14,
                                    fontWeight: FontWeight.bold, color: Colors.black),),),
                              quantityButton(icon: Icons.add, onTap: () {}),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
                    ],
                  ),
                ),
              );
            },
            itemCount: 2,
            physics: NeverScrollableScrollPhysics(),
          ),
          Padding(padding: 15.onlyTopP),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("total",style: TextStyle(color:Colors.black, fontSize: 36,fontWeight: FontWeight.bold),),
            Text("\$1888",style: TextStyle(color:Colors.black, fontSize: 36,fontWeight: FontWeight.bold),),
            ],
          ),
          Padding(padding: 15.onlyTopP),
          ElevatedButton(
              onPressed: () {Grock.to(CheckoutPage());},
              style: ButtonStyle(
              ),
              child: Text(
                "checkout",
                style: TextStyle(color: Constant.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
        ],

      ),
    );
  }

  Widget quantityButton({required IconData icon, required Function onTap}) {
    return GrockContainer(
      onTap: () => onTap,
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Constant.orange,
        borderRadius: 4.allBR,
      ),
      child: Center(
        child: Icon(icon, color: Constant.black, size: 20,),
      ),
    );
  }
}
