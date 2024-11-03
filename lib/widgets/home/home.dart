import 'package:flutter/material.dart';
import 'package:car_01/components/card.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: ListTile(
          leading: CircleAvatar(),
          title: Text(
            "Welcome Abir!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Texas, USA"),
        ),
        actions: [
          Icon(Icons.message),
          Icon(Icons.message),
          Icon(Icons.message),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 14, 18, 68),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.search),
                    hintText: 'Search by Make, Model, Year'),
              ),
              SizedBox(height: 8),
              ListTile(
                title: Text(
                  "Featured",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    card('assets/toyota.png', context),
                    card('assets/toyota_01.png', context),
                    card('assets/toyota.png', context),
                    card('assets/toyota_01.png', context),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Summer sale",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              summer_sale(context),
              ListTile(
                title: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  categories("New Cars"),
                  Spacer(),
                  categories("Used Cars"),
                  Spacer(),
                  categories("Van"),
                  Spacer(),
                  categories("Jeep"),
                  Spacer(),
                  categories("Jeep"),
                ],
              ),
              ListTile(
                title: Text(
                  "Recommended for you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    common_card(context, 'assets/toyota_01.png'),
                    common_card(context, 'assets/toyota.png'),
                    common_card(context, 'assets/toyota_01.png'),
                    common_card(context, 'assets/toyota.png'),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Upcoming appoinments",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              upcoming_appointment(context),
              ListTile(
                title: Text(
                  "Reseant Searches",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    common_card(context, 'assets/toyota.png'),
                    common_card(context, 'assets/toyota_01.png'),
                    common_card(context, 'assets/toyota.png'),
                    common_card(context, 'assets/toyota_01.png'),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Favourites",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  child: Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    common_card(context, 'assets/toyota_01.png'),
                    common_card(context, 'assets/toyota.png'),
                    common_card(context, 'assets/toyota_01.png'),
                    common_card(context, 'assets/toyota.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
