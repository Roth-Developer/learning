import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/quick_payment_model.dart';

class QuickPaymentIteam extends StatelessWidget {
  final QuickPaymentModel quickPaymentModel;
  const QuickPaymentIteam({
    Key? key,
    required this.quickPaymentModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Card(
        elevation: 2,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 28,
                  backgroundImage: AssetImage(
                    quickPaymentModel.image!,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      quickPaymentModel.name!,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      quickPaymentModel.phoneNumber!,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_horiz,
                size: 35,
                color: Colors.black54,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
