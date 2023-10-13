import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final String imageName;
  final pizzaColor;

  final double borderRadius = 12;
  const PizzaTile({
    super.key,
    required this.pizzaFlavor,
    required this.pizzaColor,
    required this.pizzaPrice,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: pizzaColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        )),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      '\$$pizzaPrice',
                      style: TextStyle(
                          color: pizzaColor[800],
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
              pizzaFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Pizza',
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
                      color: Color.fromARGB(255, 234, 173, 122)),
                  Icon(Icons.add, color: Color.fromARGB(255, 234, 173, 122)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
