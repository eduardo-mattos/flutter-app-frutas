import 'package:desafio_framework/helpers/CustomTheme.dart';
import 'package:flutter/material.dart';

class EmptyCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Carrinho vazio.', style: CustomTheme.emptyCartTextTheme),
    );
  }
}
