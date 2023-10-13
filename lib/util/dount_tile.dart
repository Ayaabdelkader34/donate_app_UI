import 'package:flutter/material.dart';

class DountTile extends StatelessWidget {
  final String dountFlavor;
  final String dountPrice;
  final String imageName;
  final dountColor;

  final double borderRadius = 12;
  const DountTile({
    super.key,
    required this.dountFlavor,
    required this.dountColor,
    required this.dountPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: dountColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: dountColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        )),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$dountPrice',
                      style: TextStyle(
                          color: dountColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 49, vertical: 20),
              child: Image.asset(imageName),
            ),
            Text(
              dountFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Dunkins',
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_outline,
                      color: Color.fromARGB(255, 224, 129, 161)),
                  Icon(Icons.add, color: Color.fromARGB(255, 202, 102, 135)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
