import 'package:desafio_framework/pages/catalog/CatalogController.dart';
import 'package:desafio_framework/pages/catalog/widgets/SearchWidget.dart';
import 'package:desafio_framework/shared/widgets/AppBarWidget.dart';
import 'package:desafio_framework/shared/widgets/DrawerWidget.dart';
import 'package:desafio_framework/pages/catalog/widgets/ProductListWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogPage extends StatelessWidget {
  CatalogController controller = Get.put(CatalogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget('Home'),
      drawer: DrawerWidget(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 5),
                child: SearchWidget(controller),
              ),
              Expanded(
                child: Obx((){
                  return ProductListWidget(controller.visibleProducts);
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}