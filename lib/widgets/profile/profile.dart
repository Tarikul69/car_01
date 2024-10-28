import 'package:car_01/login-registration/login.dart';
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
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 70,
          ),
          //
          SizedBox(
            height: 10,
          ),
          Container(
            child: profilebutton(
              name: "Name",
              symble: CupertinoIcons.person,
              myontap: () {
                //Get.toNamed(RoutesName.usersmyorder);
                //Get.to(editprofile());
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: profilebutton(
              name: "Email",
              symble: CupertinoIcons.person,
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
              name: "Phone Number",
              symble: CupertinoIcons.person,
              myontap: () {
                //Get.toNamed(RoutesName.usersmyorder);
                //Get.to(changepassword());
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: profilebutton(
              name: "Password",
              symble: CupertinoIcons.person,
              myontap: () {
                //Get.toNamed(RoutesName.usersmyorder);
                //Get.to(myprofile());
              },
            ),
          ),
          SizedBox(
            height: 10,
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
        ],
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
