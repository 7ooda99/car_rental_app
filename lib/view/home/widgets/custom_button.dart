import 'package:flutter/material.dart';


import '../../widgets/text_widget.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.text,
      this.onTap,
      required this.color,
      required this.textSize,
      @required this.textColor, required this.width,this.hasTextFamily = false, required this.radius,  this.hieght  = 58 })
      : super(key: key);

  final String text;
  final Color color;
  final double ? hieght;
  final Color? textColor;
  final double textSize;
  final VoidCallback? onTap;
  final double width;
  final bool hasTextFamily;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(radius),
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Container(
            height: hieght,
            width: width,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(radius)),
            child: Center(
              child: TextWidget(

                text: text,
                color: textColor!,
                fontSize: textSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
