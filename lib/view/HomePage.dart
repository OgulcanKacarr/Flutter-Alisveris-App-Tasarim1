import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasarim_1/riverpod/home_riverpod.dart';
import 'package:flutter_tasarim_1/view/widgets/CustomAppBarWidgets.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  HomeRiverPod homeRiverPod = HomeRiverPod();
  final controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWidgets(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildPageView(),
      ],
    );
  }

  //PageView
  Container _buildPageView() {
    return Container(
      width: 210,
      height: 210,
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(homeRiverPod.campaigns[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
        itemCount: homeRiverPod.campaigns.length,
      ),
    );
  }
}
