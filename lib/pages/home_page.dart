import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: 'lib/icons/donuat.png',
    ),
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pancake.png',
    ),
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: IconButton(
              icon: Icon(
                Icons.restaurant_menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                  icon: Icon(
                    Icons.person_2_outlined,
                    color: Colors.grey[800],
                    size: 36,
                  ),
                  onPressed: () {}),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 63.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    ' I Want To Eat...',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            Expanded(
                child: TabBarView(
              children: [
                DonutTab(),
                BurgerTab(),
                PancakeTab(),
                PizzaTab(),
                SmoothieTab(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
