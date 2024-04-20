import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';
import 'package:grock/grock.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBarWidgets extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String appbarTitle;

  CustomAppBarWidgets({Key? key, this.appbarTitle = "iDrip"})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appbarTitle),
      backgroundColor: Constant.dark_white,
      centerTitle: true,
      titleTextStyle:
          TextStyle(color: Constant.black, fontWeight: FontWeight.bold),
      leading: Padding(
        padding: 12.allP,
        child: SvgPicture.asset("assets/icons/ic_drawer.svg"),
      ),
      actions: [
        Padding(
          padding: 12.allP,
          child: SvgPicture.asset("assets/icons/ic_search.svg"),
        ),
      ],
    );
  }
}
