import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/data/model/schedule_payment_iteam_model.dart';

class SchedulePaymentIteam extends StatelessWidget {
  final SchedulePaymentModel schedulePaymentModel;
  const SchedulePaymentIteam({
    Key key,
    this.schedulePaymentModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: Card(
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Container(
          color: Color(0xffE4EEF0),
          height: 70,
          child: Row(
            children: [
              Container(
                color: Colors.white,
                width: 65,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 11,
                  ),
                  child: Column(
                    children: [
                      Text(
                        schedulePaymentModel.day,
                        style:
                            TextStyle(color: Colore.appBarColor, fontSize: 21),
                      ),
                      Text(
                        schedulePaymentModel.month,
                        style:
                            TextStyle(color: Colore.appBarColor, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 0.9,
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 11),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              child: CircleAvatar(
                                backgroundColor:
                                    schedulePaymentModel.backgroundColor,
                                backgroundImage:
                                    AssetImage(schedulePaymentModel.image),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  schedulePaymentModel.name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[700]),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  schedulePaymentModel.phoneNumber,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8, top: 3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.more_horiz,
                              size: 25,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  schedulePaymentModel.money,
                                  style: TextStyle(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  'USD',
                                  style: TextStyle(
                                      color: Colors.grey[700], fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
