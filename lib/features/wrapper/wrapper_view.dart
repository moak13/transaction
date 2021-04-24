import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'view_model/wrapper_viewmodel.dart';
import 'widgets/get_index_view.dart';

class WrapperView extends StatelessWidget {
  const WrapperView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WrapperViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          body: GetIndexView(
            index: model.currentIndex,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: model.currentIndex,
            onTap: model.setIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Wallets',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Brief',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Schedule',
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => WrapperViewModel(),
    );
  }
}
