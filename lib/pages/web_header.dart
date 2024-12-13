
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invatation/constant.dart';
import 'package:invatation/core/constants/app_assets.dart';
import 'package:invatation/core/constants/app_colors.dart';
import 'package:invatation/core/widget_export.dart';
import 'package:sizer/sizer.dart';

class WebHeader extends StatelessWidget {
  const WebHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
        vertical: 1.w
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 7),
            blurRadius: 5,
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 2.w,
                  vertical: 0.7.w
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.w),
                  color: AppColors.primary.withOpacity(0.1),
                  border: Border.all(color: AppColors.primary,width: 2.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppIcons.downArrowSvg,width: 2.w,height: 2.w,),
                    SizedBox(width: 3.w,),
                    SvgPicture.asset(AppIcons.personSvg,width: 2.w,height: 2.w,),
                  ],
                ),
              ),
              SizedBox(width: 1.w,),
              SvgPicture.asset(AppIcons.cartSvg,width: 2.w,height: 2.w,),
            ],
          )),
          Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _menu(menu: "اراء العملاء",isSubMenu: true),
                  SizedBox(width: 2.w,),
                  _menu(menu: "من نحن",isSubMenu: true),
                  SizedBox(width: 2.w,),

                  _menu(menu: "الخدمات"),
                  SizedBox(width: 2.w,),

                  _menu(menu: "التصاميم",isSubMenu: true),
                  SizedBox(width: 2.w,),

                  _menu(menu: "الباقات"),
                  SizedBox(width: 2.w,),
                 _menu(menu: "الرئيسية",isSelected: true),
                ],
              )
          ),
          Expanded(child: Image.asset(AppAssets.mainLogoIcon,color: AppColors.primary,width: 5.w,height: 5.w,)),

        ],
      ),
    );
  }

  Widget _menu({required String menu,bool isSubMenu = false,bool isSelected = false}){
    return  Row(
      children: [
        if(isSubMenu)...[
          const Icon(Icons.keyboard_arrow_down, color: Colors.black),
          SizedBox(width: 0.3.w,),
        ],
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 0.5.w,
             horizontal: 0.6.w
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.w),
            color: isSelected? Colors.green.withOpacity(0.1) : Colors.white,
          ),
          child: AppTextWidget(
            text: menu,
            fontSize: 4.sp,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
