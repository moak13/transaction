import 'package:flutter/material.dart';

import '../../brief/brief_view.dart';
import '../../reports/reports_view.dart';
import '../../schedule/schedule_view.dart';
import '../../wallets/wallets_view.dart';

class GetIndexView extends StatelessWidget {
  final int index;

  const GetIndexView({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        return WalletsView();
        break;
      case 1:
        return BriefView();
        break;
      case 2:
        return ReportsView();
        break;
      case 3:
        return ScheduleView();
        break;
      default:
        return WalletsView();
    }
  }
}
