import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/presentation/controller/addnew_schedule_controller.dart';

class ReusebleTextField extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final IconData? rightIcon;
  final TextEditingController? tc;
  final Function? onpress;
  final bool readonly;
  final TextInputType? textInputType;
  final double vertical;
  final double horizontal;

  const ReusebleTextField({
    Key? key,
    required this.addNewScheduleController,
    this.icon,
    this.title,
    this.onpress,
    this.rightIcon,
    this.tc,
    this.readonly = true,
    this.textInputType,
    this.vertical = 12,
    this.horizontal = 20,
  }) : super(key: key);

  final AddNewScheduleController addNewScheduleController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: Container(
        height: 50,
        child: TextField(
          keyboardType: textInputType,
          onTap: onpress as void Function()?,
          controller: tc,
          readOnly: readonly,
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w600),
          decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
              size: 23,
            ),
            suffixIcon: Icon(
              rightIcon,
              color: Colors.grey,
            ),
            alignLabelWithHint: false,
            labelText: title,
            labelStyle: TextStyle(
                color: Colors.grey, fontSize: 14, fontWeight: FontWeight.w600),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }
}
