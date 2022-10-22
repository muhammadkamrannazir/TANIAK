// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:taniak/Models/catagory/catagory_model.dart';
import 'package:taniak/Models/products/product_model.dart';
import 'package:taniak/Widgets/app_bar.dart';
import 'package:taniak/Widgets/nav_bar.dart';
import 'package:taniak/Widgets/product_card.dart';

class Catalog_screen extends StatelessWidget {
  static const String routeName = '/catalog';

  const Catalog_screen({Key? key, required this.catagory}) : super(key: key);
  static Route route({required Catagory catagory}) {
    return MaterialPageRoute(
        builder: (context) => Catalog_screen(catagory: catagory),
        settings: const RouteSettings(name: routeName));
  }

  final Catagory catagory;
  @override
  Widget build(BuildContext context) {
    final List<Product> catagoryProducts = Product.products
        .where((product) => product.catagory == catagory.name)
        .toList();
    return Scaffold(
      appBar: Custom_appbar(
        title: catagory.name,
      ),
      bottomNavigationBar: const Custom_bottombar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: catagoryProducts.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Product_card(
              product: catagoryProducts[index],
              widthFactor: 2.2,
            ),
          );
        },
      ),
    );
  }
}
