import 'package:flutter/material.dart';

import '../util/pancake_tile.dart';

class PancakeTab extends StatelessWidget {
  List pancakeOnSale = [
    ["Honey", "75", Colors.amber, "lib/images/honey.png"],
    ["Chocolate", "90", Colors.brown, "lib/images/chocolate.png"],
    ["Strawberry", "100", Colors.red, "lib/images/strawberry.png"],
    ["Fruit", "120", Colors.orange, "lib/images/fruits.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pancakeOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return PancakeTile(
          pancakeFlavor: pancakeOnSale[index][0],
          pancakePrice: pancakeOnSale[index][1],
          pancakeColor: pancakeOnSale[index][2],
          imageName: pancakeOnSale[index][3],
        );
      },
    );
  }
}
