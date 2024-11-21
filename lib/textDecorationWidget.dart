import 'package:flutter/material.dart';
class textDecorationWidgits extends StatelessWidget {
  const textDecorationWidgits(this.text,{super.key, required this.color_ch});
  final String text;
  final bool color_ch;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: color_ch?Colors.green:Colors.red,fontSize: 40),);
  }
}
