import 'package:flutter/material.dart';
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
      padding: EdgeInsets.symmetric(vertical: 4.w),
      decoration: LinearGradientUtil.getGradientDecoration(
        colors: [AppColors.primary, AppColors.primary.withOpacity(0.6)],
      ),
      child: Row(
        children: [
          Expanded(child: SizedBox()),
          Expanded(child: SizedBox()),
          Expanded(child: Column(
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: AppStrings.footerMenu.length,
                  itemBuilder: (context,index){
                    return AppTextWidget(
                        text: AppStrings.footerMenu[index],
                       textAlign: TextAlign.end,
                      color: Colors.white,
                    );
                  },
                  separatorBuilder: (context,index){
                    return SizedBox(height: 1.w,);
                  },

              )
            ],
          )),
          Expanded(child: Padding(
            padding:  EdgeInsets.all(2.w),
            child: Image.asset(AppAssets.mainLogoIcon),
          )),
        ],
      ),
    );
  }
}
