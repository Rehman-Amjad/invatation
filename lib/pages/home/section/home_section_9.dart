import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection9 extends StatelessWidget {
  const HomeSection9({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 2.w,),
              ImageLoadingAsset(
                assetPath: AppAssets.mobileImage,
                boxFit: BoxFit.cover,
              ),
            ],
          ),
        ),

        SizedBox(width: 1.w,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppTextWidget(
                  text: "يمكنـك الان تحمـيل التطـبيق علـي",
                  fontSize: 6.sp,
                 color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 4.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.qrSvg,width: 5.w,height: 5.w,),
                  SizedBox(width: 2.w,),
                  SvgPicture.asset(AppAssets.appsStoreSvg),
                ],
              ),
              SizedBox(height: 4.w,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppIcons.qrSvg,width: 5.w,height: 5.w,),
                  SizedBox(width: 2.w,),
                  SvgPicture.asset(AppAssets.playStoreSvg),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
