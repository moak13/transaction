import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/schedule_viewmodel.dart';

class ScheduleView extends StatelessWidget {
  const ScheduleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScheduleViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        );
      },
      viewModelBuilder: () => ScheduleViewModel(),
    );
  }
}
