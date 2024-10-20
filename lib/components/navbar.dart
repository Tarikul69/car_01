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
            finance(),
            favourits(),
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
            unselectedLabelColor: Colors.black,
            labelColor: Color.fromARGB(255, 217, 195, 220),
            tabs: [
              Tab(text: "Home", icon: Icon(Icons.home)),
              Tab(text: "Inventory", icon: Icon(Icons.padding_outlined)),
              Tab(text: "Favourites", icon: Icon(Icons.work)),
              Tab(text: "Finance", icon: Icon(Icons.person)),
              Tab(text: "Profile", icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
