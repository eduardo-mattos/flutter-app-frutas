import 'package:flutter/material.dart';

class AddToCartButtonWidget extends StatelessWidget {
  final cartController;
  final product;

  AddToCartButtonWidget(this.cartController, this.product);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      top: 10,
      child: InkWell(
        onTap: () => {
          cartController.addProductToCart(product, 1)
        },
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Icon(Icons.shopping_cart_rounded, color: Colors.white, size: 25),
        ),
      ),
    );
  }
}
