import 'package:car_01/widgets/finance/notification.dart';
import 'package:car_01/widgets/home/appointment.dart';
import 'package:car_01/widgets/home/recent_search.dart';
import 'package:car_01/widgets/message/message.dart';
import 'package:car_01/widgets/message/message_list.dart';
import 'package:flutter/material.dart';
import 'package:car_01/components/card.dart';
import 'package:get/get.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: ListTile(
          leading: CircleAvatar(
              radius: 25, backgroundImage: AssetImage('assets/man.jpg')),
          title: Text(
            "Welcome Abir!",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Texas, USA"),
        ),
        actions: [
          InkWell(
              onTap: () {
                Get.to(message_list());
              },
              child: Icon(Icons.message)),
          InkWell(
            onTap: () {
              Get.to(notification());
            },
            child: Icon(Icons.notifications),
          ),
          SizedBox(width: 15)
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(appointment());
        },
        icon: Icon(
          Icons.car_repair,
          color: Colors.white,
        ),
        backgroundColor: Color.fromARGB(255, 14, 18, 68),
        label: Text(
          "Appointment",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              //SizedBox(height: 8),
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
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 8.0,
                children: [
                  categories("New Cars"),
                  categories("Used Cars"),
                  categories("Eletric"),
                  categories("Jeep"),
                  categories("SUV's"),
                  categories("Truck"),
                  categories("Van"),
                  categories("Sedan"),
                ],
              ),

              const ListTile(
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
                    common_card(
                        context, 'assets/toyota_01.png', 'Hyundai CR-V ex-l'),
                    common_card(
                        context, 'assets/toyota.png', 'Hyundai CR-V ex-l'),
                    common_card(
                        context, 'assets/toyota_01.png', 'Hyundai CR-V ex-l'),
                    common_card(
                        context, 'assets/toyota.png', 'Hyundai CR-V ex-l'),
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
                  "Receant Searches",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                trailing: InkWell(
                  onTap: () {
                    Get.to(recent_search());
                  },
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
                    common_card(context, 'assets/toyota.png', 'Hyundai'),
                    common_card(context, 'assets/toyota_01.png', 'Hyundai'),
                    common_card(context, 'assets/toyota.png', 'Hyundai'),
                    common_card(context, 'assets/toyota_01.png', 'Hyundai'),
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
                    common_card(context, 'assets/toyota_01.png',
                        'Passport Black Edition'),
                    common_card(
                        context, 'assets/toyota.png', 'Passport Black Edition'),
                    common_card(context, 'assets/toyota_01.png',
                        'Passport Black Edition'),
                    common_card(
                        context, 'assets/toyota.png', 'Passport Black Edition'),
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
