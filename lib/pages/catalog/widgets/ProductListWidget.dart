import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/catalog/widgets/ProductWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductListWidget extends StatelessWidget {
  final productList;
  ProductListWidget(this.productList);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
        ),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductWidget(productList.elementAt(index));
        }
    );
  }
}
