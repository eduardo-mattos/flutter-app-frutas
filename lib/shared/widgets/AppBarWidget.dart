import 'package:desafio_framework/shared/widgets/CartButtonWidget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget{
  String title;

  AppBarWidget(this.title);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(child: AppBar(
      title: Text(title),
      actions: [
        CartButtonWidget()
      ],
    ), preferredSize: Size.fromHeight(72));
  }
}
