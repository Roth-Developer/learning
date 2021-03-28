import 'package:flutter_aba_clone_learning/data/model/card_model.dart';

class CardDataTest {
  static Future<List<CardModel>> demoCard() async {
    var list = await [
      CardModel(
          image: 'assets/image/card1.png',
          cardType: 'MASTER card',
          cardNumber: '001 362 546',
          useType: 'General use',
          balance: '10.79'),
      CardModel(
          image: 'assets/image/card2.png',
          cardType: 'VISA card',
          cardNumber: '022 234 545',
          useType: 'Online use',
          balance: '20.79'),
      CardModel(
          image: 'assets/image/card3.png',
          cardType: 'VISA card',
          cardNumber: '032 453 543',
          useType: 'Gaming use',
          balance: '30.79'),
      CardModel(
          image: 'assets/image/card1.png',
          cardType: 'MASTER card',
          cardNumber: '001 362 546',
          useType: 'General use',
          balance: '10.79'),
    ];
    return list;
  }
}
