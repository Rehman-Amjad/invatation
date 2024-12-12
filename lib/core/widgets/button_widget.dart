import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/app_colors.dart';
import 'app_text.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  double? width, height,fontSize;
  final double radius;
  final bool loader, oneColor;
  final Color textColor, borderColor, backgroundColor;
  final bool isShadow;
  FontWeight? fontWeight;
  Widget? prefixWidget,suffixWidget;

  ButtonWidget({
    super.key,
    required this.text,
    required this.onClicked,
    this.width,
    this.height,
    this.radius = 10.0,
    this.loader = false,
    this.oneColor = false,
    this.textColor = Colors.white,
    this.borderColor = AppColors.primary,
    this.backgroundColor = AppColors.primary,
    this.isShadow = true,
    this.fontWeight,
    this.prefixWidget,
    this.suffixWidget,
    this.fontSize,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        width: width,
        height: height ?? 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(width: oneColor ? 1.0 :0.0,color: oneColor ? borderColor :Colors.transparent),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 1.0],
            colors: [
              oneColor ? backgroundColor :  AppColors.primary,
              oneColor ? backgroundColor :  AppColors.primary,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: isShadow ? 2 : 0,
              blurRadius: isShadow ? 5 : 0,
              offset: Offset(isShadow ? 0 : 0, isShadow ? 3 : 0),
            ),
          ],
        ),
        child:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if(prefixWidget!=null)...[
                prefixWidget ?? const SizedBox.shrink(),
                SizedBox(width: 1.w,),
              ],
              AppTextWidget(
                text: text,
                fontSize:  fontSize ?? 4.sp,
                color: textColor,
                fontWeight: fontWeight ?? FontWeight.w600,
              ),
              if(suffixWidget!=null)...[
                suffixWidget ?? const SizedBox.shrink(),
                SizedBox(width: 1.w,),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
