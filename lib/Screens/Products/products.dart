// ignore_for_file: camel_case_types
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:taniak/Models/products/product_model.dart';
import 'package:taniak/Widgets/app_bar.dart';
import 'package:taniak/Widgets/carousel.dart';

class product_screen extends StatelessWidget {
  static const String routeName = '/product';

  const product_screen({Key? key, required this.product}) : super(key: key);
  static Route route({required Product product}) {
    return MaterialPageRoute(
        builder: (_) => product_screen(
              product: product,
            ),
        settings: const RouteSettings(name: routeName));
  }

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_appbar(
        title: product.name,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {},
                child: Text(
                  "Add to Cart",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [Custom_carousel(product: product)],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 61,
                  alignment: Alignment.center,
                  color: Colors.blue.withAlpha(60),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '\$${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: Text(
                "Product Information",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.blue,
                    ),
              ),
              children: const [
                ListTile(
                  title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eu pharetra dui."),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ExpansionTile(
              title: Text(
                "Dilevery Information",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.blue,
                    ),
              ),
              children: const [
                ListTile(
                  title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.consectetur adipiscing elit. Sed eu pharetra dui."),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
