import 'package:flutter/material.dart';

class ActionPad extends StatelessWidget {
  final String title;
  final Function ontap;
  const ActionPad({Key key, this.title, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 60,
        width: 200,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(35),
          // border: Border.all(
          //   color: Colors.grey,
          // ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
        ),
      ),
    );
  }
}
