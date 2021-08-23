import 'package:desafio_framework/models/CartProduct.dart';
import 'package:get/get.dart';

class CartModel {
  CartModel({
    products
  }){
    this.products = products;
  }

  final _products = RxList<CartProduct>().obs;
  RxList<CartProduct> get products => _products.value;
  set products(RxList<CartProduct> val) => _products.value = val;

}