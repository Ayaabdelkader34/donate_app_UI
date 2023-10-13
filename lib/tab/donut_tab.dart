import 'package:flutter/material.dart';

import '../util/dount_tile.dart';

class DonutTab extends StatelessWidget {
  List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream.png"],
    ["Strawberry", "45", Colors.red, "lib/images/donutaya.png"],
    ["Grape App", "84", Colors.purple, "lib/images/donutapp.png"],
    ["Choco", "95", Colors.brown, "lib/images/brown.png"]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DountTile(
          dountFlavor: donutsOnSale[index][0],
          dountPrice: donutsOnSale[index][1],
          dountColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
