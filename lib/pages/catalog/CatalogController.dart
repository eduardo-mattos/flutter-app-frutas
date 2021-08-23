import 'package:desafio_framework/helpers/ProductFetcher.dart';
import 'package:desafio_framework/models/ProductModel.dart';
import 'package:get/get.dart';


class CatalogController extends GetxController {
  CatalogController(){
    loadProducts();
  }

  final _productList = RxList<ProductModel>().obs;
  get productList => _productList.value;
  set productList(val) => _productList.value = val;

  final _searchTerm = RxString('').obs;
  get searchTerm => _searchTerm.value;
  set searchTerm(val) => _searchTerm.value = val;
  
  RxList<ProductModel> get visibleProducts{
    if(this.searchTerm != ''){
      return new RxList<ProductModel>.from(this.productList.where((prod){
        if(prod.name.toLowerCase().contains(this.searchTerm.toString().toLowerCase())){
          return true;
        }else{
          return false;
        }
      }));
    }else{
      return this.productList;
    }
  }


  loadProducts(){
    this.productList = ProductFetcher.list;
  }


  
}