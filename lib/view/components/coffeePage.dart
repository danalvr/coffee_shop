import 'package:coffee_shop/model/coffeeModel.dart';
import 'package:flutter/material.dart';

import 'coffeeMenuItemCard.dart';

class CoffeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return CoffeeMenuItemCard(index: key);
        },
      ),
    );
  }
}
