import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notification",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              card_notification('Tarikul Abir', 'man.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Munna', 'man1.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Shakil', 'man2.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Tasin', 'man.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Tarikul Abir', 'man1.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Munna', 'man2.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Shakil', 'man.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Tasin', 'man1.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Tarikul Abir', 'man2.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Munna', 'man.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Shakil', 'man.jpg', 'Appointment'),
              SizedBox(height: 10),
              card_notification('Tasin', 'man1.jpg', 'Appointment'),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

//Notification Card
Widget card_notification(
  name,
  img,
  task,
) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: .5, color: Colors.black26)),
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
          trailing: Text("time", style: TextStyle(color: Colors.black45)),
        )
      ],
    ),
  );
}
