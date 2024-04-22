import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasarim_1/riverpod/base_scaffold_riverpod.dart';

import '../../themes/color/Constant.dart';

//Consumer Widget kullanacağız.
class CustomNavigationBottomBar extends ConsumerWidget {
  const CustomNavigationBottomBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(base_riverpod);
    var read = ref.read(base_riverpod);
    //CustomNavigationBar döndür ve değerlerini base_scaffold'un riverpod'undan al.
    return BottomNavigationBar(
      backgroundColor: Constant.dark_white,
      selectedItemColor: Constant.orange,
      unselectedItemColor: Constant.black,
      items: read.items,
      currentIndex: watch.currentIndex,
      onTap: (newPageIndex) {
        //tıklanılan sekmenin değeri
        read.setCurrentIndex(newPageIndex);
      },
    );
  }
}
