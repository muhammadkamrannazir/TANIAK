// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String catagory;
  final String imageUrl;
  final bool isRecommended;
  final double price;
  final bool isPopular;

  const Product({
    required this.name,
    required this.catagory,
    required this.imageUrl,
    required this.isPopular,
    required this.isRecommended,
    required this.price,
  });

  @override
  List<Object?> get props => [
        name,
        catagory,
        imageUrl,
        isPopular,
        price,
        isRecommended,
      ];
  static List<Product> products = [
    const Product(
      name: "Loose Frock",
      catagory: 'Ladies',
      imageUrl:
          'https://images.unsplash.com/photo-1581044777550-4cfa60707c03?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      isPopular: false,
      isRecommended: false,
      price: 500,
    ),
    const Product(
      name: "Student T-shirt",
      catagory: 'Ladies',
      imageUrl:
          'https://images.unsplash.com/photo-1545291730-faff8ca1d4b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      isPopular: true,
      isRecommended: false,
      price: 400,
    ),
    const Product(
      name: "Long Coat",
      catagory: 'Ladies',
      imageUrl:
          'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZhc2hpb258ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
      isPopular: false,
      isRecommended: true,
      price: 500,
    ),
    const Product(
      name: "Korean Jacket",
      catagory: 'Ladies',
      imageUrl:
          'https://img.alicdn.com/imgextra/i3/732039845/O1CN01LL4Kdt2Mb3sOFPWIl_!!732039845-0-lubanu-s.jpg_500x500.jpg',
      isPopular: true,
      isRecommended: false,
      price: 470,
    ),
    const Product(
      name: "Casual Dress",
      catagory: 'Mens',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfHUzEb-Dkguupu4UZsL8el7JjePkX58WhuQ&usqp=CAU',
      isPopular: true,
      isRecommended: false,
      price: 270,
    ),
    const Product(
      name: "Jeans Shirt",
      catagory: 'Mens',
      imageUrl:
          'https://i.pinimg.com/474x/b9/20/9e/b9209e2c03ef7da44b088e0791ffd011.jpg',
      isPopular: false,
      isRecommended: true,
      price: 134,
    ),
    const Product(
      name: "Leather jacket",
      catagory: 'Mens',
      imageUrl:
          'https://m.media-amazon.com/images/I/71ym0EolGFL._AC_UX342_.jpg',
      isPopular: false,
      isRecommended: false,
      price: 240,
    ),
    const Product(
      name: "Kids Dress",
      catagory: 'Kids',
      imageUrl:
          'https://assets0.mirraw.com/images/8291435/image_small.jpeg?1600168654',
      isPopular: true,
      isRecommended: false,
      price: 250,
    ),
    const Product(
      name: "Kids Jacket",
      catagory: 'Kids',
      imageUrl:
          'https://media1.popsugar-assets.com/files/thumbor/ICuFJn7n3UUD1dhvWoO0JVCpuQw/fit-in/728xorig/filters:format_auto-!!-:strip_icc-!!-/2021/10/06/913/n/24155406/5ff37d40615e0d3ed75611.77240046_/i/best-free-assembly-kids-clothes-at-walmart.jpg',
      isPopular: false,
      isRecommended: true,
      price: 320,
    ),
    const Product(
      name: "Korean Hood",
      catagory: 'ladies',
      imageUrl:
          'https://img.alicdn.com/imgextra/i4/3655303985/O1CN01vxwMwF1fJAtErBkyH_!!3655303985.jpg_500x500.jpg',
      isPopular: false,
      isRecommended: false,
      price: 800,
    ),
  ];
}
