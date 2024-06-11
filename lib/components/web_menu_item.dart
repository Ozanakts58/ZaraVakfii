import 'package:flutter/material.dart';

class WebMenuItem extends StatelessWidget {
   final String title;
   const WebMenuItem(this.title);




  @override
  Widget build(BuildContext context) {
    Navigator.of(context).pushNamed("Ana Sayfa");
     return  Text(
      title,
      style: TextStyle(fontSize: 18),
    );
  }
}
