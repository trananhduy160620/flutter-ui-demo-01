import 'package:flutter/material.dart';
import 'package:flutter_stateful_widget/utils/contants.dart';
import 'package:flutter_stateful_widget/utils/widget_function.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final double width;

  const OptionButton({
    Key? key, 
    required this.text, 
    required this.icon, 
    required this.width}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: FlatButton(
        color: COLOR_DARK_BLUE,
        splashColor: COLOR_WHITE.withAlpha(55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: COLOR_WHITE),
            addHorizontalSpace(10),
            Text(text, style: const TextStyle(color: COLOR_WHITE), textAlign: TextAlign.center)
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}