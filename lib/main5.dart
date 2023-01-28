import 'package:flutter/material.dart';
class Constance{
  PreferredSizeWidget NewAppbar(String title ){

    return AppBar(
elevation: 0,
      title: Text(title),
      centerTitle: true,
    leading: Icon(Icons.add_circle),
    actions: [ IconButton(

      icon: const Icon(Icons.shopping_cart),
      tooltip: 'Open shopping cart',
      onPressed: () {
        // handle the press
      },
    ),],
    );
}


}