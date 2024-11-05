import 'package:flutter/material.dart';

class edit_profile extends StatelessWidget {
  const edit_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Title(
              color: Colors.black,
              child: Text(
                "Lone Amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  hintText: 'Enter Amount'),
            ),
            SizedBox(
              height: 10,
            ),
            Title(
              color: Colors.black,
              child: Text(
                "Lone Amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  hintText: 'Enter Amount'),
            ),
            SizedBox(
              height: 10,
            ),
            Title(
              color: Colors.black,
              child: Text(
                "Lone Amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  hintText: 'Enter Amount'),
            ),
            SizedBox(
              height: 10,
            ),
            Title(
              color: Colors.black,
              child: Text(
                "Lone Amount",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  hintText: 'Enter Amount'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                Spacer(),
                ElevatedButton(onPressed: () {}, child: Text("Save"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
