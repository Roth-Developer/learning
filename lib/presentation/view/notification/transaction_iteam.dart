import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/transaction_iteam_model.dart';

class TransactionIteamCard extends StatelessWidget {
  const TransactionIteamCard({
    Key key,
    this.transactionIteamModel,
  }) : super(key: key);

  final TransactionIteamModel transactionIteamModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [BoxShadow()],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: transactionIteamModel.color,
                    backgroundImage: AssetImage(transactionIteamModel.image),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transactionIteamModel.title,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        transactionIteamModel.dateTime,
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                transactionIteamModel.description,
                style: TextStyle(fontSize: 13, color: Colors.grey[700]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
