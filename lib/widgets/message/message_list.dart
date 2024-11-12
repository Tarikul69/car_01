import 'package:car_01/widgets/message/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class message_list extends StatelessWidget {
  const message_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Chat List",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(message());
                },
                child:
                    card_message_list('Tarikul Abir', 'man.jpg', 'Appointment'),
              ),
              SizedBox(height: 10),
              InkWell(
                  onTap: () {
                    Get.to(message());
                  },
                  child: card_message_list('Munna', 'man1.jpg', 'Appointment')),
              SizedBox(height: 10),
              InkWell(
                  onTap: () {
                    Get.to(message());
                  },
                  child:
                      card_message_list('Shakil', 'man2.jpg', 'Appointment')),
              SizedBox(height: 10),
              InkWell(
                  onTap: () {
                    Get.to(message());
                  },
                  child: card_message_list('Tasin', 'man.jpg', 'Appointment')),
              SizedBox(height: 10),
              InkWell(
                  onTap: () {
                    Get.to(message());
                  },
                  child: card_message_list('Tasin', 'man1.jpg', 'Appointment')),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

//message_list Card
Widget card_message_list(
  name,
  img,
  task,
) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border:
            Border.all(width: .5, color: Color.fromARGB(66, 150, 150, 150))),
    child: Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            foregroundImage: AssetImage('assets/${img}'),
          ),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          subtitle: Text(task, style: TextStyle(color: Colors.black45)),
          trailing: Text("${DateTime.now().subtract(Duration(minutes: 5))}",
              style: TextStyle(color: Colors.black45)),
        )
      ],
    ),
  );
}
