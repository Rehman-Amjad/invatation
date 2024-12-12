import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection2 extends StatelessWidget {
  const HomeSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 2.w,),
              ImageLoadingAsset(
                assetPath: AppAssets.notice,
                boxFit: BoxFit.cover,
              ),
            ],
          ),
        ),

        SizedBox(width: 1.w,),
        Expanded(
          flex: 2,
          child: ListView.separated(
              shrinkWrap: true,
              itemCount: AppStrings.infoPointsList.length,
              itemBuilder: (context, index){
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 SizedBox(
                   width: 40.w,
                   child: AppTextWidget(
                       text: AppStrings.infoPointsList[index],
                       fontSize: 4.sp,
                       textAlign: TextAlign.end,
                     fontWeight: FontWeight.w500,
                   ),
                 ),
                SizedBox(width: 1.w,),
                Container(
                  width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.w),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 2.0),
                          blurRadius: 4.0,
                          color: Colors.black12,
                        )
                      ]
                    ),
                    child: Center(child: SvgPicture.asset(AppIcons.checkSvg,fit: BoxFit.cover,)))
              ],
            );
          },separatorBuilder: (context, index){
                return SizedBox(height: 2.w,);
          },
          ),
        )

      ],
    );
  }
}
