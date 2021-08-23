import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  final image;
  ProductImageWidget(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ((MediaQuery.of(context).size.width - 15) / 2) - 40,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Image.network(image),
        ),
      ),
    );
  }
}
