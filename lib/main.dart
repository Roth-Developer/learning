import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/route.dart';
import 'package:flutter_aba_clone_learning/di/account_binding.dart';
import 'package:flutter_aba_clone_learning/di/addnew_schedule_binding.dart';
import 'package:flutter_aba_clone_learning/di/card_binding.dart';
import 'package:flutter_aba_clone_learning/di/cash_to_atm_binding.dart';
import 'package:flutter_aba_clone_learning/di/contact_us_binding.dart';
import 'package:flutter_aba_clone_learning/di/home_binding.dart';
import 'package:flutter_aba_clone_learning/di/new_account_binding.dart';
import 'package:flutter_aba_clone_learning/di/notification_binding.dart';
import 'package:flutter_aba_clone_learning/di/payment_binding.dart';
import 'package:flutter_aba_clone_learning/di/quick_payment_binding.dart';
import 'package:flutter_aba_clone_learning/di/quick_transfer_binding.dart';
import 'package:flutter_aba_clone_learning/di/schedule_binding.dart';
import 'package:flutter_aba_clone_learning/di/transfer_binding.dart';
import 'package:flutter_aba_clone_learning/presentation/view/account/account_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/addnew_schedul/addnew_schedule.view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/card/card_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/cash_to_atm/cash_to_atm_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/contact_us/contact_us_view.dart';

import 'package:flutter_aba_clone_learning/presentation/view/home/home_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/new_account/new_account_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/notification/notificantion_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/quick_payment/quick_payment_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/quick_transfer/quick_transfer.dart';
import 'package:flutter_aba_clone_learning/presentation/view/scan_qr/scan_qr_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/schedule_payment/schdule_payment_view.dart';
import 'package:flutter_aba_clone_learning/presentation/view/test.dart';
import 'package:flutter_aba_clone_learning/presentation/view/transfer/transfer_view.dart';

import 'package:flutter_aba_clone_learning/util/theme.dart';
import 'package:get/get.dart';

import 'presentation/view/payment/payment_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: RouteName.home,
    theme: AppTheme.myTheme(),
    getPages: [
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
      GetPage(
        name: RouteName.newaccount,
        page: () => NewAccountView(),
        binding: NewAccountBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.transfer,
        page: () => TransferView(),
        binding: TransferBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.quicktransfer,
        page: () => QuickTransferView(),
        binding: QuickTransferBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.quickpayment,
        page: () => QuickPaymentView(),
        binding: QuickPaymentBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.cashtoatm,
        page: () => CashToAtmView(),
        binding: CashToAtmBinding(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.test,
        page: () => MyApp(),
        transition: Transition.rightToLeft,
      ),
      GetPage(
        name: RouteName.scanqr,
        page: () => ScanQrView(),
        transition: Transition.rightToLeft,
      ),
    ],
  ));
}
