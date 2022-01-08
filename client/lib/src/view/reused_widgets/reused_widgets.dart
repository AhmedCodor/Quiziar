import 'package:client/src/utils/constants/constansts.dart';
import 'package:client/src/utils/constants/palette.dart';
import 'package:client/src/view/reused_widgets/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusedWidgets{
  static spaceOut({double? h, double? w}){
    return h == null && w == null
    ? const SizedBox.shrink()
    : SizedBox(
      height: h,
      width: w,
    );
  }

  static Widget getMaterialButton({required void Function()? onPress, Widget? kid, Color? bgColor, bool withRadius = true, String? label, Color? textColor, EdgeInsetsGeometry? givenPadd}){
    return MaterialButton(
      splashColor: whiteClr.withOpacity(0.2),
      highlightColor: whiteClr.withOpacity(0.5),
      padding: givenPadd,
      shape: withRadius ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(kDefaultRadiusPadd)) : null,
      color: bgColor,
      onPressed: onPress,
      child: kid ?? CustomText(txt: label ?? '', clr: textColor ?? whiteClr),
    );
  }
}