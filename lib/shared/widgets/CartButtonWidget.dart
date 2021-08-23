import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/cart/CartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CartController cartController = Get.find();

    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.shopping_cart, size: 30,),
            onPressed: ()=>{
              Get.toNamed('/cart')
            }
          ),
          Positioned(
            top: 0,
            right: 5,
            child: Container(
                width: 20,
                height: 20,
                child:  ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: Container(
                    color: Colors.red,
                    child: Center(
                      child: Obx((){
                        return Text(cartController.cartProductsQuantity.toString(), style: CustomTheme.cartQuantityTextTheme,);
                      }),
                    ),
                  ),
                ) // This trailing comma makes auto-formatting nicer for build methods.
            ),
          )
        ],
      ),
    );
  }
}
