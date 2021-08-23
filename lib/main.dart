import 'package:desafio_framework/pages/cart/CartController.dart';
import 'package:desafio_framework/pages/login/LoginController.dart';
import 'package:desafio_framework/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Get.put(CartController());
    Get.put(LoginController());

    return GetMaterialApp(
      title: 'Loja de frutas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 18)
          )
      ),
      initialRoute: '/login',
      getPages: routes(),
    );
  }
}
