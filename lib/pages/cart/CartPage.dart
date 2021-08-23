import 'package:desafio_framework/pages/cart/CartController.dart';
import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/cart/widgets/EmptyCartWidget.dart';
import 'package:desafio_framework/pages/cart/widgets/ProductListWidget.dart';
import 'package:desafio_framework/shared/widgets/AppBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Carrinho'),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Obx((){
                if(cartController.cart.products.length > 0){
                  return ProductListWidget(cartController, cartController.cart.products);
                }else{
                  return EmptyCartWidget();
                }
              }),
            ),
            Obx((){
              if(cartController.cart.products.length > 0){
                return ElevatedButton(
                  onPressed: (){
                    cartController.checkout();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Checkout', style: CustomTheme.loginButtonTextTheme),
                  ),
                );
              }else{
                return SizedBox(height: 0);
              }
            })

          ],
        ),
      ),
    );
  }
}