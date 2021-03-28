import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/di/account_binding.dart';
import 'package:flutter_aba_clone_learning/di/addnew_schedule_binding.dart';
import 'package:flutter_aba_clone_learning/di/card_binding.dart';
import 'package:flutter_aba_clone_learning/di/contact_us_binding.dart';
import 'package:flutter_aba_clone_learning/di/home_binding.dart';
import 'package:flutter_aba_clone_learning/di/notification_binding.dart';
import 'package:flutter_aba_clone_learning/di/payment_binding.dart';
import 'package:flutter_aba_clone_learning/di/schedule_binding.dart';
import 'package:flutter_aba_clone_learning/presentation/view/account/account_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/card_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/contact_us/contact_us_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/home/drawer/listtile/schedule_payment/schdule_payment_view.dart';

import 'package:flutter_aba_clone_learning/presentation/view/home/home_page_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/notificantion_view.dart';
import 'package:flutter_aba_clone_learning/presentation/widget/test.dart';
import 'package:get/get.dart';

import 'presentation/view/home/drawer/listtile/schedule_payment/float_action_button/addnew_schedul/addnew_schedule.view.dart';
import 'presentation/view/payment/payment_view.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteName.home,
    getPages: [
      GetPage(
        name: RouteName.test,
        page: () => TestPage(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.home,
        page: () => HomeView(),
        binding: HomeBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.account,
        page: () => AccountView(),
        binding: AccountBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.notification,
        page: () => NotificationView(),
        binding: NotificationBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.contactus,
        page: () => ContactUsView(),
        binding: ContactUsBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.schedulepayment,
        page: () => SchedulePaymentView(),
        binding: ScheduleBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.card,
        page: () => CardView(),
        binding: CardBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.payment,
        page: () => PaymentView(),
        binding: PaymentBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.addnewschedule,
        page: () => AddNewScheduleView(),
        binding: AddNewScheduleBinding(),
        transition: Transition.rightToLeft,
      ),
    ],
  ));
}
