import 'package:flutter_aba_clone_learning/data/model/announcement_iteam_model.dart';

class AnoucementDataTest {
  static Future<List<NotificationAnnouncementModel>> demoAnouncement() async {
    var list = await [
      NotificationAnnouncementModel(
        backgroundImage: 'assets/image/1.jpg',
        title: 'Use ABA Mobile instead of cash',
        dateTime: '12/03/21 / 18:57:20',
        description:
            'We recommend reducing cash contact and using ABA Mobile for all your payments and transfers , especially during this Covid outbreak . Be smart , go cashless!',
        detail: 'GOT IT',
      ),
      NotificationAnnouncementModel(
          backgroundImage: 'assets/image/5.jpg',
          title: 'We adjust E-Cash to support KHR',
          dateTime: '26/02/21 / 10:45:09',
          description:
              'Supporting the goverment\'s initialtive to promote local currency, E-Cash service now only uses KHR except multiples ........................sssssssssssssssssssss.111111111111111111111111111111!',
          detail: 'OPEN ACCOUNT'),
      NotificationAnnouncementModel(
          backgroundImage: 'assets/image/6.jpg',
          title: 'Go cashless to stay protected',
          dateTime: '12/03/21 / 18:57:20',
          description:
              'We recommend reducing cash contact and using ABA Mobile for all your payments and transfers , especially during this Covid outbreak . Be smart , go cashless!',
          detail: 'OK'),
      NotificationAnnouncementModel(
          backgroundImage: 'assets/image/7.jpg',
          title: 'We adjust E-Cash to support KHR',
          dateTime: '26/02/21 / 10:45:09',
          description:
              'Supporting the goverment\'s initialtive to promote local currency, E-Cash service now only uses KHR except multiples ........................sssssssssssssssssssss.111111111111111111111111111111!',
          detail: 'GOT IT'),
    ];
    return list;
  }
}
