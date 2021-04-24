import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../locator.dart';

enum SnackbarType { debitSnackBar, creditSnackBar }

void setupSnackbarUi() {
  final _snackbarService = locator<SnackbarService>();

  _snackbarService.registerCustomSnackbarConfig(
    variant: SnackbarType.creditSnackBar,
    config: SnackbarConfig(
      backgroundColor: Colors.green,
      messageColor: Colors.white,
      borderRadius: 16,
      messageTextAlign: TextAlign.center,
      margin: EdgeInsets.only(
        left: 32.0,
        right: 32.0,
        bottom: 80.0,
      ),
    ),
  );

  _snackbarService.registerCustomSnackbarConfig(
    variant: SnackbarType.debitSnackBar,
    config: SnackbarConfig(
      backgroundColor: Colors.red,
      messageColor: Colors.white,
      borderRadius: 16,
      messageTextAlign: TextAlign.center,
      margin: EdgeInsets.only(left: 32.0, right: 32.0, bottom: 80.0),
    ),
  );
}
