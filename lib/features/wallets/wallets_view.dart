import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/extensions/string_extensions.dart';
import 'view_model/wallets_viewmodel.dart';
import 'widgets/action_pad.dart';
import 'widgets/key_pad.dart';

class WalletsView extends StatelessWidget {
  const WalletsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletsViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('avatar'.png),
                        radius: 15,
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          alignment: Alignment.center,
                          child: Center(
                            child: Text(
                              'N${model.amountLeft.toString()} left',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  model.inputedAmount.isEmpty
                      ? '\$0'
                      : '\$${model.inputedAmount}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 70),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  child: Text(
                    'Add a memo',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () => model.triggerMemo(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: model.keyRowOne
                      .map(
                        (e) => KeyPad(
                          key: Key(e),
                          title: e,
                          ontap: () {
                            model.assignNumber(number: e);
                          },
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: model.keyRowTwo
                      .map(
                        (e) => KeyPad(
                          key: Key(e),
                          title: e,
                          ontap: () {
                            model.assignNumber(number: e);
                          },
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: model.keyRowThree
                      .map(
                        (e) => KeyPad(
                          key: Key(e),
                          title: e,
                          ontap: () {
                            model.assignNumber(number: e);
                          },
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: model.keyRowFour.map((e) {
                    if (e == "<")
                      return KeyPad(
                        key: Key(e),
                        title: e,
                        ontap: () {
                          model.deleteLast();
                        },
                      );
                    return KeyPad(
                      key: Key(e),
                      title: e,
                      ontap: () {
                        model.assignNumber(number: e);
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ActionPad(
                        title: 'debit',
                        ontap: () {
                          model.debitAmount();
                        },
                      ),
                    ),
                    Expanded(
                      child: ActionPad(
                        title: 'credit',
                        ontap: () {
                          model.creditAmount();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => WalletsViewModel(),
    );
  }
}
