import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection7 extends StatelessWidget {
  const HomeSection7({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(AppIcons.leftSvg),
        SizedBox(width: 2.w,),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, // Number of items in a row
              crossAxisSpacing: 1.w, // Space between columns
              mainAxisSpacing: 1.w, // Space between rows
              childAspectRatio: 0.9, // Aspect ratio for each grid item
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 2.w,
                    vertical: 2.w
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300]!,
                        blurRadius: 5.0,
                        spreadRadius: 2.0,
                      ),
                    ]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAssets.testimonialImage,width: 4.w,height: 4.w,),
                    SizedBox(height: 2.w,),
                    AppTextWidget(text: "Lorem ipsum dolor sit amet consectetur. Potenti vel sed suspendisse rhoncus etiam est blandit. Tempor vitae a faucibus malesuada facilisi nibh. Massa tristique "),
                    SizedBox(height: 2.w,),
                    SvgPicture.asset(AppIcons.starSvg)
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(width: 2.w,),
        SvgPicture.asset(AppIcons.rightSvg),

      ],
    );
  }

}
