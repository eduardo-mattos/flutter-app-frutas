import 'package:desafio_framework/models/ProductModel.dart';

class CartProduct{
  CartProduct(this.product, this.amount);

  ProductModel product;
  int amount;

  String get totalAsString{
    return product.moneyFormatter.format(amount * product.price);
  }
}