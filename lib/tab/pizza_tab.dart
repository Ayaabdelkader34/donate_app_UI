import 'package:flutter/material.dart';

import '../util/pizza_tile.dart';

class PizzaTab extends StatelessWidget {
  List pizzaOnSale = [
    ["Vegetables", "75", Colors.orange, "lib/images/vegetables.png"],
    ["Pepperoni", "110", Colors.amber, "lib/images/pepperoni.png"],
    ["Cheese", "125", Colors.amber, "lib/images/cheese.png"],
    ["Mushrooms", "130", Colors.orange, "lib/images/mushroom.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaColor: pizzaOnSale[index][2],
          imageName: pizzaOnSale[index][3],
        );
      },
    );
  }
}
