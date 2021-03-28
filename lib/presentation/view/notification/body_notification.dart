import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/tab_bar/notification_announcements.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/tab_bar/notification_transaction.dart';

class BodyNotification extends StatelessWidget {
  const BodyNotification({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 40,
            color: Colore.appBarColor,
            child: TabBar(
              labelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              unselectedLabelColor: Colors.white30,
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              tabs: [
                Tab(
                  text: 'TRANSACTIONS',
                ),
                Tab(
                  text: 'ANNOUNCEMENTS',
                ),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: TabBarView(children: [
                NotificationTransaction(),
                NotificationAnnouncements()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
