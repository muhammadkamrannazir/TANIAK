// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';

class Section_title extends StatelessWidget {
  const Section_title({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(color: Colors.blue),
          )),
    );
  }
}
