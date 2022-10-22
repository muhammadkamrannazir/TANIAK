// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:taniak/Models/products/product_model.dart';

class Product_card extends StatelessWidget {
  const Product_card({
    Key? key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftposition = 5,
    this.isWishlist = false,
  }) : super(key: key);
  final Product product;
  final double widthFactor;
  final double leftposition;
  final bool isWishlist;
  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(children: [
        SizedBox(
          width: widthValue,
          height: 150,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          left: leftposition,
          child: Container(
            width: widthValue - 10 - leftposition,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue.withAlpha(50),
            ),
          ),
        ),
        Positioned(
          top: 65,
          left: leftposition + 5,
          child: Container(
            width: widthValue - 20 - leftposition,
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "\$${product.price}",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  isWishlist
                      ? Expanded(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
