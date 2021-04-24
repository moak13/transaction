import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/brief_viewmodel.dart';

class BriefView extends StatelessWidget {
  const BriefView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BriefViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => BriefViewModel(),
    );
  }
}
