// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taniak/Screens/Account/account.dart';

class Custom_bottombar extends StatelessWidget {
  const Custom_bottombar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: SizedBox(
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(Icons.home, color: Colors.white,),
            ),
             IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
              icon: const Icon(Icons.shopping_cart, color: Colors.white,),
            ),
             IconButton(
              onPressed: () {
                Get.to(const Accont_screen());
              },
              icon: const Icon(Icons.person, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
