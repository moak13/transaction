import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../common/service_ui/setup_snackbar_ui.dart';
import '../../../locator.dart';

class WalletsViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  String _title = "Wallets View";
  String get title => _title;

  double _amountLeft = 5000;
  double get amountLeft => _amountLeft;

  String _inputedAmount = '';
  String get inputedAmount => _inputedAmount;

  List<String> _keyRowOne = ['1', '2', '3'];
  List<String> get keyRowOne => _keyRowOne;
  List<String> _keyRowTwo = ['4', '5', '6'];
  List<String> get keyRowTwo => _keyRowTwo;
  List<String> _keyRowThree = ['7', '8', '9'];
  List<String> get keyRowThree => _keyRowThree;
  List<String> _keyRowFour = ['.', '0', '<'];
  List<String> get keyRowFour => _keyRowFour;

  /// This function helps us to get the tapped keys and display it in the view
  assignNumber({String number}) {
    print('KeyTapped: $number');
    // each entry cannot contain more than one decimal point
    if (_inputedAmount
            .toString()
            .split(RegExp(r'\s.{1}\s'))
            .last
            .contains('.') &&
        number.toString() == '.') return;
    // the first entry cannot be a decimal
    if (_inputedAmount.toString().isEmpty && number.toString() == '.') return;
    _inputedAmount += number;
    notifyListeners();
  }

  deleteLast() {
    // delete the last entry and remove any trailing space
    _inputedAmount = _inputedAmount.substring(0, _inputedAmount.length - 1);
    notifyListeners();
  }

  /// This function helps us to debit money from our wallet
  debitAmount() {
    final _balance = _amountLeft - double.parse(_inputedAmount);
    _amountLeft = _balance;
    _snackbarService.showCustomSnackBar(
      variant: SnackbarType.debitSnackBar,
      message: 'Wallet debitted with $_inputedAmount',
      duration: Duration(seconds: 3),
    );
    notifyListeners();
  }

  /// This function helps us to credit money into our wallet
  creditAmount() {
    final _balance = _amountLeft + double.parse(_inputedAmount);
    _amountLeft = _balance;
    _snackbarService.showCustomSnackBar(
      variant: SnackbarType.creditSnackBar,
      message: 'Wallet creditted with $_inputedAmount',
      duration: Duration(seconds: 3),
    );
    notifyListeners();
  }

  /// This function triggers a message of unavailable feature
  triggerMemo() {
    _snackbarService.showCustomSnackBar(
      variant: SnackbarType.memoSnackBar,
      message: 'This Feature Is Not Avaiable',
      duration: Duration(seconds: 3),
    );
    notifyListeners();
  }
}
