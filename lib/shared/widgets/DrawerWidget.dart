import 'package:desafio_framework/pages/login/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/736x/50/09/0b/50090bde81c58a26a112df8e9a7eec75.jpg'),
                      )
                  ),
                  child: SizedBox(height: 0),
                ),
                ListTile(
                  title: const Text('Home'),
                  trailing: Icon(Icons.home),
                  onTap: () {
                    Navigator.pop(context);
                    Get.toNamed('/');
                  },
                ),
                ListTile(
                  title: const Text('Carrinho'),
                  trailing: Icon(Icons.shopping_cart),
                  onTap: () {
                    Navigator.pop(context);
                    Get.toNamed('/cart');
                  },
                )
              ],
            ),
          ),
          ListTile(
            title: const Text('Sair'),
            trailing: Icon(Icons.subdirectory_arrow_right),
            onTap: () {
              loginController.logout();
            },
          )
        ],
      ),
    );
  }
}
