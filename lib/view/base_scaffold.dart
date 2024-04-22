import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:flutter_tasarim_1/riverpod/base_scaffold_riverpod.dart";
import "package:flutter_tasarim_1/view/widgets/CustomAppBarWidgets.dart";
import "package:flutter_tasarim_1/view/widgets/custom_navigation_bottom.dart";

import "../themes/color/Constant.dart";

class BaseScaffold extends ConsumerStatefulWidget {
  const BaseScaffold({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BaseState();

}

class _BaseState extends ConsumerState<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //CustomAppBar  burada kullanılır
      appBar: CustomAppBarWidgets(),
      backgroundColor: Constant.white,
      bottomNavigationBar: CustomNavigationBottomBar(),
      //body'de scaffold'un riverpod'undan çekiyoruz
      body: ref.watch(base_riverpod).buildBody(),
    );
  }
}
