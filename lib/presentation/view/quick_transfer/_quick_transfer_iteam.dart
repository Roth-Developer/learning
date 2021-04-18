import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/data/model/quick_transfer_iteam_model.dart';

class QuickTransferIteam extends StatelessWidget {
  final QuickTransferModel quickTransferModel;
  const QuickTransferIteam({
    Key? key,
    required this.quickTransferModel,
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
                  backgroundColor: quickTransferModel.color,
                  radius: 28,
                  child: Text(
                    quickTransferModel.profileText!,
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
                      quickTransferModel.name!,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Text(
                          quickTransferModel.account!,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Container(
                          height: 16,
                          width: 30,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                            ),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              'USD',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ],
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
