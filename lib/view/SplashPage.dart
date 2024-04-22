import 'package:flutter/material.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';
import 'package:flutter_tasarim_1/view/HomePage.dart';
import 'package:flutter_tasarim_1/view/base_scaffold.dart';
import 'package:flutter_tasarim_1/viewmodel/SplashPageViewModel.dart';
import 'package:grock/grock.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SplashPageViewModel model = SplashPageViewModel();
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      //2 saniye sonra geri dönemeksizin ana sayfaya git
      Grock.toRemove(BaseScaffold());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.dark_white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: model.buildSplashLogo(),
    );
  }
}
