import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final controller;
  SearchWidget(this.controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: 'Pesquisar frutas',
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10)
      ),
      onChanged: (text){
        controller.searchTerm.value = text;
      },
    );
  }
}
