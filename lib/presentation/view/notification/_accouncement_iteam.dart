import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/announcement_iteam_model.dart';

class AnnouncementItem extends StatelessWidget {
  final NotificationAnnouncementModel? notificationAnnouncementModel;

  const AnnouncementItem({Key? key, this.notificationAnnouncementModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildCollapsed2() {
      return Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Image.asset(
                  notificationAnnouncementModel!.backgroundImage!,
                  fit: BoxFit.fill,
                ),
                height: 100,
                width: double.infinity,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.black,
                        ],
                        stops: [
                          0,
                          1,
                        ])),
              ),
              Container(
                height: 100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notificationAnnouncementModel!.title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        notificationAnnouncementModel!.dateTime!,
                        style: TextStyle(color: Colors.white60, fontSize: 9),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Text(
              notificationAnnouncementModel!.description!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey[600], fontSize: 11),
            ),
          )
        ],
      );
    }

    buildExpanded2() {
      return Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Image.asset(
                  notificationAnnouncementModel!.backgroundImage!,
                  fit: BoxFit.fill,
                ),
                height: 200,
                width: double.infinity,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.black,
                        ],
                        stops: [
                          0,
                          1,
                        ])),
              ),
              Container(
                height: 200,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        notificationAnnouncementModel!.title!,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        notificationAnnouncementModel!.dateTime!,
                        style: TextStyle(color: Colors.white60, fontSize: 9),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Text(
              notificationAnnouncementModel!.description!,
              style: TextStyle(color: Colors.grey[600], fontSize: 11),
            ),
          )
        ],
      );
    }

    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
      child: ScrollOnExpand(
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expandable(
                collapsed: buildCollapsed2(),
                expanded: buildExpanded2(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (context) {
                      var controller = ExpandableController.of(context);
                      return GestureDetector(
                        onTap: () {
                          controller!.toggle();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            notificationAnnouncementModel!.detail!,
                            style: TextStyle(
                                color: Colors.cyan[600],
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      );
                    },
                  ),
                  Builder(
                    builder: (context) {
                      var controller = ExpandableController.of(context)!;
                      return IconButton(
                        icon: controller.expanded
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.cyan[600],
                              )
                            : Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.cyan[600],
                              ),
                        onPressed: () {
                          controller.toggle();
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
