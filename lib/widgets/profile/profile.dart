import 'package:car_01/login-registration/login.dart';
import 'package:car_01/widgets/favourites/favourits.dart';
import 'package:car_01/widgets/profile/change_password.dart';
import 'package:car_01/widgets/profile/edit_profile.dart';
import 'package:car_01/widgets/profile/save_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: InkWell(
              onTap: () {
                Get.to(edit_profile());
              },
              child: Icon(Icons.edit),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              CircleAvatar(
                  radius: 70, backgroundImage: AssetImage('assets/man.jpg')),
              Positioned(
                right: 10,
                bottom: -1,
                child: InkWell(child: Icon(Icons.camera_alt_sharp)),
              )
            ]),
            //
            SizedBox(
              height: 10,
            ),
            Container(
              child: profilebutton(
                name: "Name",
                symble: CupertinoIcons.person_alt,
                myontap: () {
                  Get.to(edit_profile());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              child: profilebutton(
                name: "Password",
                symble: Icons.password,
                myontap: () {
                  Get.to(change_password());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: profilebutton(
                name: "Settings",
                symble: Icons.settings,
                myontap: () {
                  //Get.toNamed(RoutesName.usersmyorder);
                  //Get.to(myprofile());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: profilebutton(
                name: "Favourit",
                symble: Icons.favorite_border_sharp,
                myontap: () {
                  Get.to(favourits());
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: profilebutton(
                name: "Saved Items",
                symble: Icons.save,
                myontap: () {
                  Get.to(save_items());
                },
              ),
            ),
            TextButton(
              autofocus: false,
              style: ButtonStyle(),
              onPressed: () {
                Get.bottomSheet(
                  Material(
                    borderRadius: BorderRadius.circular(25),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 3,
                            width: Get.width / 5,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Logout",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(""),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            width: Get.width,
                            child: ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {
                                Get.offAll(login());
                              },
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 50,
                            width: Get.width,
                            child: ElevatedButton(
                              style: ButtonStyle(),
                              onPressed: () {},
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Text(
                "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: const Color.fromARGB(255, 171, 6, 6),
                ),
              ),
            ),
            Text("A product of LogicMatrix")
          ],
        ),
      ),
    );
  }

  Widget profilebutton(
      {required String name,
      required IconData symble,
      required VoidCallback myontap}) {
    return InkWell(
      onTap: myontap,
      child: Container(
        decoration: const BoxDecoration(boxShadow: []),
        child: ListTile(
          title: Text(
            name.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          //subtitle: Text("data"),
          leading: Icon(
            symble,
            color: Colors.deepPurple,
          ),
          trailing: const FaIcon(
            FontAwesomeIcons.angleRight,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
