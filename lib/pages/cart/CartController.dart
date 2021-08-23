import 'package:desafio_framework/helpers/PdfSaver.dart';
import 'package:desafio_framework/models/CartModel.dart';
import 'package:desafio_framework/models/CartProduct.dart';
import 'package:desafio_framework/models/ProductModel.dart';
import 'package:get/get.dart';


class CartController extends GetxController {

  final _cart = CartModel(products: RxList<CartProduct>()).obs;
  get cart => _cart.value;
  set cart(val) => _cart.value = val;

  int get cartProductsQuantity{
    return this.cart.products.length;
  }

  addProductToCart(ProductModel product, int quantity){
    int productIndex = this.cart.products.indexWhere((prod) => prod.product.id == product.id);

    if(productIndex != -1){
      var updateProduct = this.cart.products.value[productIndex];
      updateProduct.amount++;
      this.cart.products.value[productIndex] = updateProduct;
    }else{
      CartProduct cartProduct = CartProduct(product, quantity);
      this.cart.products.add(cartProduct);
    }

    Get.snackbar('Sucesso', 'Produto adicionado ao carrinho');
  }

  removeProductFromCart(ProductModel product){
    int productIndex = this.cart.products.indexWhere((prod) => prod.product.id == product.id);
    if(productIndex != -1){
      this.cart.products.removeAt(productIndex);
    }

    Get.snackbar('Sucesso', 'Produto removido do carrinho');
  }

  checkout() async{
    PdfSaver pdf = new PdfSaver(this.cart);
    var filePath = await pdf.saveFile();

    if(filePath != null){
      Get.snackbar('Sucesso', 'Comprovante salvo com sucesso.');
    }
  }
}