import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/wallets_viewmodel.dart';

class WalletsView extends StatelessWidget {
  const WalletsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WalletsViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => WalletsViewModel(),
    );
  }
}
