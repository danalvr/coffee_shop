import 'package:coffee_shop/model/nonCoffeeModel.dart';
import 'package:flutter/material.dart';

import 'nonCoffeeMenuItemCard.dart';

class NonCoffeePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return NonCoffeeMenuItemCard(index: key);
        },
      ),
    );
  }
}
