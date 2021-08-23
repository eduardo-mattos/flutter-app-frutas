import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/cart/widgets/ProductWidget.dart';
import 'package:flutter/material.dart';

class ProductListWidget extends StatelessWidget {
  final productList;
  final controller;

  ProductListWidget(this.controller, this.productList);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(height: 20),
        itemCount: productList.length,
        itemBuilder: (context, index){
          return ProductWidget(controller, productList[index]);
        }
    );
  }
}
