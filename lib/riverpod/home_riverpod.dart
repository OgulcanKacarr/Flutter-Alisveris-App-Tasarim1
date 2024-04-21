import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/model/home_category_model.dart';



class HomeRiverPod extends ChangeNotifier {
  //kayan pencerede yer alacak nesneler

  //kampanyalar
  List<String> campaigns = [
    "assets/images/im_campaigns.png",
    "assets/images/im_campaigns.png",
    "assets/images/im_campaigns.png",
    "assets/images/im_campaigns.png",
  ];

  //pencereleri takip etmek için index durumunu kontrol edeceğiz.
  int currentIndex = 0;

//pencelerin değiştiğini takip etme
  PageController pageController = PageController(initialPage: 0);

//Sayfa değiştiğinde yeni indexi current Index'e atamamız gerekiyor
  void setNewIndex(int i) {
    currentIndex = i;
    notifyListeners();
  }




}
