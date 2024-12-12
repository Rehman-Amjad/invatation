import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invatation/core/constants/app_icons.dart';
import 'package:invatation/core/widget_export.dart';
import 'package:sizer/sizer.dart';

class HomeSection4 extends StatelessWidget {
  const HomeSection4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:  5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Step 1
          Stack(
            children: [
              Row(
               mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 40.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: AppTextWidget(
                           text:  'انشاء الدعوة',
                              fontSize: 7.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.gold,
                            textAlign: TextAlign.end,
                            ),
                        ),
                        SizedBox(height: 1.h),
                        AppTextWidget(
                          text: 'بعد طلب دعوتك، سيتم التواصل معك خلال ساعات للحصول على معلومات المناسبة والدعوة.',
                          fontSize: 5.sp,
                          textAlign: TextAlign.end,
                          ),
                      ],
                    ),
                  ),
                  SizedBox(width: 1.w),
                  _countImage(
                      path: AppIcons.count1Svg,
                      width: 11.w,
                  ),
                ],
              ),
            ],
          ),

          // Step 2
          Transform.translate(
            offset: Offset(-2.w, -12.w),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _countImage(
                      path: AppIcons.count2Svg,
                      width: 15.w,
                    ),
                    SizedBox(width: 1.w),
                    SizedBox(
                      width: 40.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: AppTextWidget(
                              text:  'تصميم الدعوة',
                              fontSize: 7.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.gold,
                              textAlign: TextAlign.end,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          AppTextWidget(
                            text: 'يمكنك اختيار القالب و تخصيص محتوى الدعوة بما يناسب مناسبتك',
                            fontSize: 5.sp,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
                _arrowConnector(path: AppIcons.leftArrowSvg,offSetY: 7.w,offSetX: 55.w)
              ],
            ),
          ),

          // Step 3
          Transform.translate(
            offset: Offset(0, -25.w),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: AppTextWidget(
                              text:  'تصميم الدعوة',
                              fontSize: 7.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.gold,
                              textAlign: TextAlign.end,
                            ),
                          ),
                          SizedBox(height: 1.h),
                          AppTextWidget(
                            text: 'سيتم ارسال روابط شخصية لكل مدعو من خلال الواتساب أو الرسائل النصية أو البريد الالكتروني (حسب اختيارك)',
                            fontSize: 5.sp,
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ),
                    _countImage(
                      path: AppIcons.count3Svg,
                      width: 15.w,
                    ),
                    SizedBox(width: 1.w),

                  ],
                ),
                _arrowConnector(path: AppIcons.rightArrowSvg,offSetY: 4.w,offSetX: 20.w)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _arrowConnector({required String path,double? offSetX,double? offSetY,double? height}){
    return Transform.translate(
      offset: Offset(offSetX ?? 0, offSetY ?? 0),
      child: SvgPicture.asset(
        path,
        height: height,
      ),
    );
  }

  Widget _countImage({required String path,double? width,double? height}){
    return Container(
      margin: EdgeInsets.only(top: 3.w),
      width: width,
      height: height,
      child: SvgPicture.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }


  }
