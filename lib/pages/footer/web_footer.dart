import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invatation/constant.dart';
import 'package:invatation/core/constants/app_colors.dart';
import 'package:invatation/core/widget_export.dart';
import 'package:sizer/sizer.dart';

import '../../core/widgets/gradient_widget.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      padding: EdgeInsets.symmetric(vertical: 4.w,horizontal: 2.w),
      decoration: LinearGradientUtil.getGradientDecoration(
        colors: [AppColors.primary, AppColors.primary.withOpacity(0.6)],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _head(text: "تابعنا على",isOpacity: false),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    _socialIcon(path: AppIcons.instagramSvg),
                      SizedBox(width: 1.w,),
                      _socialIcon(path: AppIcons.facebookSvg),
                      SizedBox(width: 1.w,),
                      _socialIcon(path: AppIcons.youtubeSvg),
                      SizedBox(width: 1.w,),
                      _socialIcon(path: AppIcons.pinterestSvg),
                      SizedBox(width: 1.w,),
                      _socialIcon(path: AppIcons.tiktokSvg),
                    ],
                  ),
                  SizedBox(height: 3.w,),
                  Transform.translate(
                    offset: Offset(5.w, 0),
                    child: Row(
                      children: [
                        Expanded(child: SvgPicture.asset(AppAssets.appsStoreSvg)),
                        SizedBox(width: 1.w,),
                        Expanded(child: SvgPicture.asset(AppAssets.playStoreSvg))
                      ],
                    ),
                  )
                  
                ],
              )
          ),
          SizedBox(width: 1.w,),
          Expanded(child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                 _head(text: "روابط مهمة"),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: AppStrings.footerMenu.length,
                      itemBuilder: (context,index){
                        return AppTextWidget(
                            text: AppStrings.footerMenu[index],
                           textAlign: TextAlign.end,
                          color: Colors.white,
                          fontSize: 4.sp,
                        );
                      },
                      separatorBuilder: (context,index){
                        return SizedBox(height: 1.w,);
                      },

                  ),
                ],
              )
            ],
          )),

          SizedBox(width: 1.w,),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  _head(text: "من نحن"),
                  AppTextWidget(
                      text:"وصل... دعوتك توصل بكل سهولة",
                      fontSize: 4.sp,
                      color: Colors.white,
                     textAlign: TextAlign.end,
                     fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 2.w,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      AppTextWidget(
                        text:"واتس اب",
                        fontSize: 4.sp,
                        color: Colors.white.withOpacity(0.4),
                        textAlign: TextAlign.end,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(width: 1.w,),
                      SvgPicture.asset(AppIcons.whatsappSvg,width: 25,height: 25,),


                    ],
                  )
                ],
              )
          ),
          SizedBox(width: 1.w,),
          Expanded(child: Padding(
            padding:  EdgeInsets.all(3.w),
            child: Image.asset(AppAssets.mainLogoIcon),
          )),
        ],
      ),
    );
  }

  Widget _socialIcon({required String path}){
    return Container(
      width: 2.w,
      height: 2.w,
      padding: EdgeInsets.all(0.5.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.w),
          color: Colors.white
      ),
      child: SvgPicture.asset(path,width: 1.w,height: 1.w,),
    );
  }

  Widget _head({required String text,bool isOpacity = true}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppTextWidget(
          text: text,
          textAlign: TextAlign.end,
          color: isOpacity ? Colors.white.withOpacity(0.4) : Colors.white,
          fontSize: 6.sp,

        ),
        SizedBox(height: 1.w,),
        Container(
          height: 1.0,
          margin: EdgeInsets.only(left: 2.w),
          color: AppColors.primary.withOpacity(0.3),
        ),
        SizedBox(height: 1.5.w,),
      ],
    );
  }
}
