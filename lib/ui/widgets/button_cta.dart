import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class ButtonCTA extends StatelessWidget {
  final String textButton;
  final double widthButton;
  final Function() onClick;
  final Color warna;
  final TextStyle text;
  const ButtonCTA(
      {Key? key,
      required this.textButton,
      required this.widthButton,
      required this.onClick,
      required this.warna,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: 50,
      margin: EdgeInsets.only(
        top: 40,
        // bottom: 10,
      ),
      child: TextButton(
        onPressed: onClick,
        child: Text(
          textButton,
          style: text.copyWith(
            fontSize: 18,
          ),
        ),
        style: TextButton.styleFrom(
            backgroundColor: warna,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            )),
      ),
    );
  }
}
