import 'package:desafio_framework/pages/cart/CartPage.dart';
import 'package:desafio_framework/pages/catalog/CatalogPage.dart';
import 'package:desafio_framework/pages/login/LoginPage.dart';
import 'package:get/get.dart';

routes() => [
  GetPage(name: '/login', page: () => LoginPage()),
  GetPage(name: '/', page: () => CatalogPage()),
  GetPage(name: '/cart', page: () => CartPage()),

];