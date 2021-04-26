import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final String title;
  final Function ontap;
  const KeyPad({Key key, this.title, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Ink(
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
