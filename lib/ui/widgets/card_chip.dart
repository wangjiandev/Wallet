import 'package:flutter/material.dart';

class CardChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image(
            image: AssetImage('images/creditcardchipsilver.png'),
            width: 45.0,
          ),
          SizedBox(
            width: 45.0,
          ),
          SizedBox(
            width: 45.0,
          ),
          SizedBox(
            width: 45.0,
          ),
        ],
      ),
    );
  }
}
