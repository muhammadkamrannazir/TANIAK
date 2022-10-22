import 'package:equatable/equatable.dart';
import 'package:taniak/Models/products/product_model.dart';

class Cart extends Equatable {
  const Cart({this.products = const <Product>[]});

  final List<Product> products;

  double get subtotal => products.fold(
        0,
        (total, current) => total + current.price,
      );

  double deliveryFee(subtotal) {
    if (subtotal <= 1000) {
      return 10;
    } else {
      return 200.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String get subtotalString => subtotal.toStringAsFixed(2);

  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(1);

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(1);

  @override
  List<Object?> get props => [products];
}
