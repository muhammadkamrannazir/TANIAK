// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taniak/Models/products/product_model.dart';

class Cart_product_card extends StatelessWidget {
  const Cart_product_card({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            width: 105,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(color: Colors.black),
                ),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_circle,
                  color: Colors.blue
                ),
              ),
              Text(
                "1",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.black),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle,
                  color: Colors.blue
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
