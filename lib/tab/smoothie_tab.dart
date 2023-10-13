import 'package:flutter/material.dart';

import '../util/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {
  List smoothieOnSale = [
    ["Orange", "75", Colors.orange, "lib/images/orange.png"],
    ["Strawberry", "80", Colors.red, "lib/images/berry.png"],
    ["Blue Berry", "90", Colors.purple, "lib/images/blueberry.png"],
    ["Banana", "95", Colors.amber, "lib/images/banana.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieColor: smoothieOnSale[index][2],
          imageName: smoothieOnSale[index][3],
        );
      },
    );
  }
}
