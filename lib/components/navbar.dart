import 'package:car_01/widgets/favourites/favourits.dart';
import 'package:car_01/widgets/finance/finance.dart';
import 'package:car_01/widgets/home/home.dart';
import 'package:car_01/widgets/inventory/inventory.dart';
import 'package:car_01/widgets/profile/profile.dart';
import 'package:flutter/material.dart';

class navbar extends StatelessWidget {
  const navbar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
          children: [
            home(),
            inventory(),
            favourits(),
            finance(),
            profile(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          child: TabBar(
            indicatorWeight: .1,
            labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
            unselectedLabelColor: Color.fromARGB(255, 14, 18, 68),
            labelColor: Color.fromARGB(255, 14, 18, 68),
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Inventory", icon: Icon(Icons.inventory_2)),
              Tab(text: "Favourites", icon: Icon(Icons.favorite)),
              Tab(text: "Finance", icon: Icon(Icons.wallet)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
