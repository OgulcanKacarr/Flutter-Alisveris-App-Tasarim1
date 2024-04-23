import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("checkout",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
