// import 'dart:html';

// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:taniak/Models/Cart/cart_model.dart';
// import 'package:taniak/Models/products/product_model.dart';

// part 'cart_event.dart';
// part 'cart_state.dart';

// class CartBloc extends Bloc<CartEvent, CartState> {
//   CartBloc() : super(CartLoading()) {
//     on<LoadCart>(_onloadCart);
//     on<LoadCart>(_onAddProduct);
//     on<LoadCart>(_onRemoveProduct);
//   }
// }

// void _onloadCart(event, Emitter<CartState> emit) async {
//   emit(CartLoading());
//   try {
//     await Future<void>.delayed(const Duration(seconds: 1));
//     emit(const CartLoaded());
//   } catch (_) {
//     emit(CartError());
//   }
// }

// void _onAddProduct(event, Emitter<CartState> emit) {
//   final state = this.state;
//   if (state is CartLoaded) {
//     try {
//       emit(CartLoaded(
//           cart: Cart(
//         products: List.from(state.cart.products)..add(event.product),
//       )));
//     } on Exception {
//       emit(CartError());
//     }
//   }
// }

// void _onRemoveProduct(
//   event,
//   Emitter<CartState> emit,
// ) {
//    final state = this.state;
//   if (state is CartLoaded) {
//     try {
//       emit(CartLoaded(
//           cart: Cart(
//         products: List.from(state.cart.products)..remove(event.product),
//       )));
//     } on Exception {
//       emit(CartError());
//     }
//   }
// }
