import 'package:coffee_shop/model/snackModel.dart';
import 'package:flutter/material.dart';

import 'snackMenuItemCard.dart';

class SnackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return SnackMenuItemCard(index: key);
        },
      ),
    );
  }
}
