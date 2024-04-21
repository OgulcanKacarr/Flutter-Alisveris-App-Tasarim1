import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tasarim_1/riverpod/category_riverpod.dart';
import 'package:flutter_tasarim_1/riverpod/home_riverpod.dart';
import 'package:flutter_tasarim_1/themes/color/Constant.dart';
import 'package:flutter_tasarim_1/view/widgets/CustomAppBarWidgets.dart';
import 'package:flutter_tasarim_1/view/widgets/custom_products_card_widgets.dart';
import 'package:grock/grock.dart';

//HomeRiverpod'u ekliyoruz
final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverPod());
final categoryRiverpod = ChangeNotifierProvider((ref) => CategoryRiverpod());

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.white,
      appBar: CustomAppBarWidgets(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildCampaignsPageView(),
        SizedBox(
          height: 20,
        ),
        _buildProductsCategories(),
        _buildProductsCategories(),
      ],
    );
  }

  //PageView
  Container _buildCampaignsPageView() {
    //anlık değişiklikleri izlemek
    var watch = ref.watch(homeRiverpod);
    //değişiklikleri uygulamak
    var read = ref.read(homeRiverpod);

    return Container(
      width: 210,
      height: 210,
      child: Stack(
        children: [
          PageView.builder(
            //controller değerini dolduralım
            controller: read.pageController,
            //gösterilecek değerleri dolduralım
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(watch.campaigns[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            //ekran saysını belirtelim
            itemCount: read.campaigns.length,
            //sayfa değişikliklerini kontrol edelim
            onPageChanged: (newPageIndex) {
              //yeni sayfanın değerini current Index'e atayalım
              read.setNewIndex(newPageIndex);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for (int i = 0; i < read.campaigns.length; i++)
                    Container(
                      width: 8,
                      height: 8,
                      margin: 3.allP,
                      decoration: BoxDecoration(
                        //değişim renklerini ayarlıyoruz
                        color: watch.currentIndex == i
                            ? Constant.white
                            : Constant.gray,
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductsCategories() {
    //RiverPod'u okumak için hep bu çağırılır.
    var watch = ref.watch(categoryRiverpod);
    var read = ref.read(categoryRiverpod);
    return Column(
      children: [
        //Başlıklar
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Kategori Başlığı
              Text(
                read.hotDeals.categoryTitle,
                style: TextStyle(
                    color: Constant.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w800),
              ),
              //See All Başlığı
              Text(
                "See All",
                style: TextStyle(
                    color: Color(0xffA6A6AA),
                    fontSize: 14,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        //Ürünleri yan yana gösteren listview
        SizedBox(
          height: 270,
          child: ListView.separated(
            //nesneler arasındaki boşluk
            separatorBuilder: (context,index){
              return SizedBox(width: 20,);
            },
            //ListView'u yatay olarak hizalıyoruz, ürünleri yerleştirmek için
            scrollDirection: Axis.horizontal,
            padding: [20,10,20,10].paddingLTRB,
            itemCount: read.hotDeals.products.length,
            itemBuilder: (context, index){
              //CardView'a ürünleri ekliyoruz
              return CustomProductsCardWidgets(productsModel: read.hotDeals.products[index],);
            },
          ),
        ),
      ],
    );
  }
}
