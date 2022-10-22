// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:taniak/Models/products/product_model.dart';
import 'package:taniak/Widgets/product_card.dart';
class Product_carousel extends StatelessWidget {
  const Product_carousel({
    Key? key,
    required this.products,
  }) : super(key: key);
  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 7),
            child: Product_card(
              product: products[index], 
            ),
          );
        },
      ),
    );
  }
}