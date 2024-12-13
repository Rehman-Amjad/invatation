import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection10 extends StatelessWidget {
  const HomeSection10({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              AppTextWidget(
                text: "الاسئــلة الشــائعــة",
                fontWeight: FontWeight.bold,
                fontSize: 6.sp,
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 1.w,),
              ListView.separated(
                shrinkWrap: true,
                itemCount: AppStrings.faqList.length,
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 1.5.w,
                      horizontal: 1.w
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      // borderRadius: BorderRadius.circular(1.w),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 40.w,
                          child: AppTextWidget(
                            text: AppStrings.faqList[index],
                            fontSize: 4.sp,
                            textAlign: TextAlign.end,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 1.w,),
                        SvgPicture.asset(AppIcons.downArrowSvg,fit: BoxFit.cover,)
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index){
                  return SizedBox(height: 2.w,);
                },
              ),
            ],
          ),
        ),
        SizedBox(width: 2.w,),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 2.w,),
              ImageLoadingAsset(
                assetPath: AppAssets.faqImage,
                boxFit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
