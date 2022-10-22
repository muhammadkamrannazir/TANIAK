// ignore_for_file: camel_case_types
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:taniak/Models/catagory/catagory_model.dart';
import 'package:taniak/Models/products/product_model.dart';
import 'package:taniak/Widgets/app_bar.dart';
import 'package:taniak/Widgets/carousel.dart';
import 'package:taniak/Widgets/nav_bar.dart';
import 'package:taniak/Widgets/product_carousel.dart';
import 'package:taniak/Widgets/section_title.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({Key? key}) : super(key: key);
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const Home_screen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Custom_appbar(
        title: "TANIAK",
      ),
      bottomNavigationBar: const Custom_bottombar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Catagory.catagories
                  .map((catagory) => Custom_carousel(catagory: catagory))
                  .toList(),
            ),
            const Section_title(
              title: 'Recommended',
            ),
      //------------------------product carousel
            Product_carousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const Section_title(
              title: 'Popular',
            ),
            Product_carousel(
              products: Product.products
                  .where((product) => product.isPopular)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
