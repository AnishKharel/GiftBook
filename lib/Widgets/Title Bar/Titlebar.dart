import 'package:flutter/material.dart';

class Titlebar extends StatelessWidget {
  const Titlebar ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 1500,
        decoration: BoxDecoration(color: Colors.blue[500],),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          SizedBox(
              height: 80, 
              width: 150, 
              child: Image.asset('assets/GiftBook_logo.png')),
          Row(
            children: <Widget>[
              _titleItems("About"),
              SizedBox(width: 80,),
              _titleItems("Authors"),
              SizedBox(width:40),
          ]
          )
        ]

        ));
  }
}


class _titleItems extends StatelessWidget {
 final String title;
 const _titleItems (this.title);

 @override

  Widget build(BuildContext context){
    return Text(title, style: TextStyle(fontSize: 18),);
  }

}
