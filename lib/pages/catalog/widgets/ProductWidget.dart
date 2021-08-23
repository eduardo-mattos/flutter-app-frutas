import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/cart/CartController.dart';
import 'package:desafio_framework/pages/catalog/widgets/AddToCartButtonWidget.dart';
import 'package:desafio_framework/pages/catalog/widgets/ProductImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductWidget extends StatelessWidget {
  final product;
  ProductWidget(this.product);

  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();

    return Stack(
      children: [
        Container(
          color: Colors.grey[200],
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                ProductImageWidget(product.image),
                Container(
                  color: Theme.of(context).primaryColor,
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(product.name, style: CustomTheme.productNameTextTheme),
                        Text(product.formattedPrice, style: CustomTheme.productPriceTextTheme)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        AddToCartButtonWidget(cartController, product)
      ],
    );
  }
}
