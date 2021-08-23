import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:desafio_framework/pages/login/LoginController.dart';
import 'package:desafio_framework/pages/login/widgets/LoginFormFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginFormWidget extends StatelessWidget {
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Seja bem-vindo', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Text('Efetue login para continuar', style: TextStyle(fontSize: 16, color: Colors.grey[600])),
          SizedBox(height: 20,),
          LoginFormFieldWidget((value) => {
            loginController.email = value
          }, 'Email'),
          SizedBox(height: 15),
          LoginFormFieldWidget((value) => {
            loginController.password = value
          }, 'Senha'),
          SizedBox(height: 15),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                  child: ElevatedButton(
                      onPressed: (){
                        loginController.login();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text('Entrar', style: CustomTheme.loginButtonTextTheme),
                      )
                  )
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: (){

                },
                child: Text('Cadastrar-se', style: TextStyle(fontSize: 16)),
              ),
              TextButton(
                onPressed: (){

                },
                child: Text('Recuperar senha', style: TextStyle(fontSize: 16)),
              )
            ],
          )
        ],
      ),
    );
  }
}
