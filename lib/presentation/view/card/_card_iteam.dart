import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/data/model/card_model.dart';

class CardIteam extends StatelessWidget {
  final CardModel? cardModel;
  const CardIteam({
    Key? key,
    this.cardModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 25, left: 20),
          height: 230,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            cardModel!.image!,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 8),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardModel!.cardType!,
                    style: TextStyle(color: Colors.black87, fontSize: 18),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        cardModel!.cardNumber!,
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      Text(
                        ' / ',
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        cardModel!.useType!,
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        'Available balance: ',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                      Text(
                        cardModel!.balance!,
                        style: TextStyle(
                            color: Colore.appBarColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' USD',
                        style: TextStyle(
                            color: Colore.appBarColor,
                            fontSize: 11,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 140,
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black54,
              )
            ],
          ),
        )
      ],
    );
  }
}
