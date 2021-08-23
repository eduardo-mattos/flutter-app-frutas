import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final product;
  final controller;

  ProductWidget(this.controller, this.product);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key(product.product.name),
        onDismissed: (direction){
          controller.removeProductFromCart(product.product);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product.amount.toString()+'x '+product.product.name, style: CustomTheme.cartPageProductNameTextTheme),
                  Text('Valor unitário: '+ product.product.formattedPrice),
                  Text('Total: '+ product.totalAsString)
                ],
              ),
              Container(
                height: 60,
                width: 60,
                child: Image.network(product.product.image),
              )
            ],
          ),
        )
    );


  }
}
