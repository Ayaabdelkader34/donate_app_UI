import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final String imageName;
  final smoothieColor;

  final double borderRadius = 12;
  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothieColor,
    required this.smoothiePrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: smoothieColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: smoothieColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        )),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$smoothiePrice',
                      style: TextStyle(
                          color: smoothieColor[800],
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
              smoothieFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Smoothie',
              style: TextStyle(color: Colors.grey[750]),
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
                      color: Color.fromARGB(255, 233, 185, 220)),
                  Icon(Icons.add, color: Color.fromARGB(255, 233, 185, 220)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
