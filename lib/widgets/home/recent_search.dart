import 'package:flutter/material.dart';

class recent_search extends StatelessWidget {
  const recent_search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Recent Searches",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              card_recent_searches(context, 'assets/toyota_01.png'),
              card_recent_searches(context, 'assets/toyota.png'),
              card_recent_searches(context, 'assets/toyota_01.png'),
              card_recent_searches(context, 'assets/toyota.png'),
              card_recent_searches(context, 'assets/toyota_01.png'),
              card_recent_searches(context, 'assets/toyota.png'),
              card_recent_searches(context, 'assets/toyota_01.png'),
              card_recent_searches(context, 'assets/toyota_01.png'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget card_recent_searches(context, img) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      border: Border.all(
        color: Color.fromARGB(255, 200, 200, 200), // Color of the border
        width: .5,
      ),
    ),
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height / 6.5,
    margin: EdgeInsets.all(2),
    child: Column(
      children: [
        ListTile(
          leading: Container(
            child: SizedBox(
                height: 150,
                width: MediaQuery.sizeOf(context).width / 3.5,
                child: Image.asset(img)),
          ),
          title: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hyundai",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text("MSRP\$31,005")
                ],
              ),
              Row(
                children: [Text("Accord EX"), Spacer(), Text("Year:2024")],
              ),
              Row(
                children: [Text("Color:"), Spacer(), Text("")],
              ),
              Row(
                children: [
                  Text("Engine:1.5LI-4 cyl"),
                  Spacer(),
                  Container(
                    child: Text("Used"),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
