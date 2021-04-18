import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/transfer_model.dart';

class TransferIteam extends StatelessWidget {
  final TransferModel? transferModel;
  const TransferIteam({
    Key? key,
    this.transferModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Card(
        elevation: 2,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: transferModel!.color),
                child: Icon(
                  transferModel!.icon,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              title: Text(
                transferModel!.title!,
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.black54),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
