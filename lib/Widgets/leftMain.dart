import 'package:flutter/material.dart';

class leftMain extends StatelessWidget {
  const leftMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 550,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("GiftBook.",style: TextStyle(fontWeight: FontWeight.w900, height: 0.9,fontSize: 80),
          ),
          SizedBox(width: 300),
          Text(
            "Connect with everyone and learn the Gift interests of others.",
            style: TextStyle(
              fontSize: 24,
              height: 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
