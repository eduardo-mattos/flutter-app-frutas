import 'package:intl/intl.dart';

class ProductModel {
  ProductModel(this.id, this.name, this.price, this.image);

  int id;
  String name;
  double price;
  String image;

  final moneyFormatter = NumberFormat.currency(locale: 'pt_BR', symbol: "R\$ ");

  String get formattedPrice {
    return this.moneyFormatter.format(this.price);
  }

}