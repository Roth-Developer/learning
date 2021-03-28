import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/reuseble_listtile.dart';
import 'package:get/get.dart';

Drawer homePageDrawer() {
  return Drawer(
    elevation: 10,
    child: Container(
      color: Color(0xff004365),
      child: ListView(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/image/rose1.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(color: Colors.blue, fontSize: 17),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Roseanne Park',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'ID: 99999',
                      style: TextStyle(color: Colors.blue[100], fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
            child: Container(
              color: Colors.white,
            ),
          ),
          ReusebleListtile(
            icon: Icons.schedule,
            text: 'Scedule',
            onPress: () {
              Get.toNamed(RouteName.schedulepayment);
            },
          ),
          ReusebleListtile(
            onPress: () {},
            icon: Icons.location_on_outlined,
            text: 'Location ABA PAY',
          ),
          ReusebleListtile(
            onPress: () {},
            icon: Icons.monetization_on,
            text: 'Exchange Rate',
          ),
          ReusebleListtile(
            onPress: () {},
            icon: Icons.phone_in_talk_outlined,
            text: 'Contact Us',
          ),
          ReusebleListtile(
            onPress: () {},
            icon: Icons.settings,
            text: 'Setting',
          )
        ],
      ),
    ),
  );
}
