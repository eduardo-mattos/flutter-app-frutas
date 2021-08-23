import 'package:get/get.dart';

class LoginController extends GetxController {

  final _isLoggedIn = false.obs;
  get isLoggedIn => _isLoggedIn.value;
  set isLoggedIn(val) => _isLoggedIn.value = val;

  final _email = ''.obs;
  get email => _email.value;
  set email(val) => _email.value = val;

  final _password = ''.obs;
  get password => _password.value;
  set password(val) => _password.value = val;

  login(){
    if(this.email != 'user@email.com') {
      Get.snackbar('Ops', 'Email inválido.');
      return;
    }

    if(this.password != '123456'){
      Get.snackbar('Ops', 'Senha invocorreta.');
      return;
    }

    this.isLoggedIn = true;
    Get.toNamed('/');
  }

  logout(){
    this.isLoggedIn = false;
    Get.toNamed('/login');
  }

}