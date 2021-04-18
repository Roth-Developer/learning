import 'package:flutter/material.dart';
import 'package:flutter_aba_clone_learning/common/constant/color.dart';
import 'package:flutter_aba_clone_learning/data/model/new_account_iteam_model.dart';

class NewAccountIteam extends StatelessWidget {
  final NewAccountIteamModel? newAccountIteamModel;
  const NewAccountIteam({
    Key? key,
    this.newAccountIteamModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
      child: Card(
        elevation: 3,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.22,
          width: MediaQuery.of(context).size.width - 10,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: newAccountIteamModel!.backgroundColor,
                        radius: 25,
                        child: Icon(
                          newAccountIteamModel!.icon,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                newAccountIteamModel!.title!,
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                newAccountIteamModel!.description!,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width - 10,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          newAccountIteamModel!.greenText!,
                          style: TextStyle(
                              color: Colore.appBarColor,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.8),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 15,
                          color: Colore.appBarColor,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
