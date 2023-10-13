import 'package:flutter/material.dart';

import '../util/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  List burgerOnSale = [
    ["Chicken", "90", Colors.brown, "lib/images/chicken.png"],
    ["Veggie", "100", Colors.orange, "lib/images/veggie.png"],
    ["Big Mac", "110", Colors.amber, "lib/images/bigmac.png"],
    ["Beef", "140", Colors.red, "lib/images/beef.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerColor: burgerOnSale[index][2],
          imageName: burgerOnSale[index][3],
        );
      },
    );
  }
}
