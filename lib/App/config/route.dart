// ignore_for_file: avoid_print, no_duplicate_case_values
import 'package:flutter/material.dart';
import 'package:taniak/Models/catagory/catagory_model.dart';
import 'package:taniak/Models/products/product_model.dart';
import 'package:taniak/Screens/Cart/cart.dart';
import 'package:taniak/Screens/Catalog/catalog.dart';
import 'package:taniak/Screens/Home/home_page.dart';
import 'package:taniak/Screens/Products/products.dart';

class Approuter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("This is route: ${settings.name}");

    switch (settings.name) {
      case '/':
        return Home_screen.route();
      case Home_screen.routeName:
        return Home_screen.route();
      case Cart_screen.routeName:
        return Cart_screen.route();
      case product_screen.routeName:
        return product_screen.route(product: settings.arguments as Product);
      case Catalog_screen.routeName:
        return Catalog_screen.route(catagory: settings.arguments as Catagory);

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("ERROR"),
              ),
            ),
        settings: const RouteSettings(name: '/error'));
  }
}