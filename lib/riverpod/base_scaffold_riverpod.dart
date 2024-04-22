import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tasarim_1/view/CartPage.dart';
import 'package:flutter_tasarim_1/view/HomePage.dart';
import 'package:flutter_tasarim_1/view/AccountPage.dart';
import 'package:flutter_tasarim_1/view/wishlist_page.dart';

import '../view/CategoryPage.dart';

//base_scaffold_riverpod'u da bağlayalım.
final base_riverpod = ChangeNotifierProvider((ref) => BaseScaffoldRiverpod());

class BaseScaffoldRiverpod extends ChangeNotifier {

  //Custom Navigaton Bar'ın sekmelerini oluşturalım. Buradan çekeceğiz.
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/icons/ic_bottom_home.svg"),
        label: "Home"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/icons/ic_bottom_save.svg"),
        label: "Wishlist"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/icons/ic_bottom_categories.svg"),
        label: "Category"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/icons/ic_bottom_profile.svg"),
        label: "Account"),
    BottomNavigationBarItem(
        icon: SvgPicture.asset("assets/icons/ic_bottom_cart.svg"),
        label: "Cart"),
  ];

  //NavigationBar'ın current İndexi
  int currentIndex = 0;

  //Currentİndex'i değiştirme fonksiyonu
  void setCurrentIndex(int i) {
    currentIndex = i;
    notifyListeners();
  }

//Base Scaffold'un gövdesini döndürelim. NavigationBottom'daki sayfalar
  Widget buildBody() {
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return WishlistPage();
      case 2:
        return CategoryPage();
      case 3:
        return AccountPage();
      case 4:
        return CartPage();
      default:
        return HomePage();
    }
  }
}
