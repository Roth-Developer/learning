import 'package:flutter/material.dart';

import 'package:flutter_aba_clone_learning/data/model/template_model.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

import 'package:get/get.dart';

import '../../../widget/greyline.dart';

class SelectTemplateIteam extends StatelessWidget {
  final TemplateModel? templateModel;

  const SelectTemplateIteam({
    Key? key,
    this.templateModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AddNewScheduleController addNewScheduleController = Get.find();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
            addNewScheduleController
                .selectTemplate(templateModel!.name! + templateModel!.account!);
          },
          child: Container(
            height: MediaQuery.of(context).size.height / 3.7 / 4,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 15),
                  child: Icon(
                    Icons.radio_button_off,
                    color: Colors.grey,
                    size: 22,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      templateModel!.name!,
                      style: TextStyle(
                          inherit: false,
                          color: Colors.black54,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      templateModel!.account!,
                      style: TextStyle(
                          inherit: false,
                          color: Colors.black54,
                          fontSize: 13,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        greyLine(),
      ],
    );
  }
}
