import 'package:flutter/material.dart';

import '../../../utils/constant.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    @required this.inputType,
    this.suffexIcon,
    @required this.onSaved,
    this.onChange,
    this.maxLines,
    this.lableText,
    this.controller,
    this.validator,
    this.prefixIcon,
    this.hintLableText,
    this.borderColor,
    this.textAlign = TextAlign.left,
    this.width,
  }) : super(key: key);
  final String? lableText;
  final String? hintLableText;
  final TextInputType? inputType;
  final double? width;
  final Widget? suffexIcon;
  final Widget? prefixIcon;
  final TextAlign textAlign;
  final ValueSetter? onSaved;
  final ValueSetter? onChange;
  final int? maxLines;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width:  width,
        child: Material(
          elevation: 1,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(15),
            child: TextFormField(
              
              validator: validator,
              // (value) {
              //   if (value == null || value.isEmpty) {
              //     return 'الرجاء ادخال بيانات';
              //   }
              //   return null;
              // }
              // ,
              controller: controller,
              keyboardType: inputType,
              onChanged: onChange,
              onSaved: onSaved,
              maxLines: maxLines,
              textAlign: textAlign,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  // borderSide: BorderSide(color: kMainColor, width: 1.0),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(15),
                  // ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(color: Colors.transparent, width:1.0),
                ),
                prefixIcon: prefixIcon,
                suffixIcon: suffexIcon,
                labelText: lableText,
                hintText: hintLableText,
                hintTextDirection: TextDirection.rtl,
                filled: true,
                fillColor: kWhiteColor,
                hintStyle: TextStyle(fontSize: 13, color: kBlackColor),
                labelStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
