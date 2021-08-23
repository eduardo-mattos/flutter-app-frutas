import 'package:desafio_framework/models/ProductModel.dart';
import 'package:get/get.dart';

class ProductFetcher{
  static RxList<ProductModel> get list => RxList([
    ProductModel(1, 'Maçã', 1.50, 'https://superprix.vteximg.com.br/arquivos/ids/175207-600-600/Maca-Argentina--1-unidade-aprox.-200g-.png?v=636294203590200000'),
    ProductModel(2, 'Pêra', 2.35, 'https://www.mundoecologia.com.br/wp-content/uploads/2019/07/Pera-4.png'),
    ProductModel(3, 'Banana', 0.99, 'https://static1.conquistesuavida.com.br/ingredients/5/54/26/75/@/24677--ingredient_detail_ingredient-2.png'),
    ProductModel(4, 'Abacaxi', 3.20, 'https://superprix.vteximg.com.br/arquivos/ids/175201-292-292/Abacaxi--unidade-.png?v=636294199507870000'),
    ProductModel(5, 'Manga', 2.70, 'https://superprix.vteximg.com.br/arquivos/ids/175183-600-600/Manga-Tommy--1-unidade-aprox.-450g-.png?v=636294182209630000'),
  ]);
}