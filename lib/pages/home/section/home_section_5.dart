import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection5 extends StatelessWidget {
  const HomeSection5({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items in a row
              crossAxisSpacing: 3.w, // Space between columns
              mainAxisSpacing: 1.w, // Space between rows
              childAspectRatio: 1.2, // Aspect ratio for each grid item
            ),
            itemCount: AppStrings.cardList.length,
            itemBuilder: (context, index) {
              return  _boxDesign(
                path: AppStrings.cardList[index]["icon"].toString(),
                title: AppStrings.cardList[index]["text"].toString(),
                subtitle: AppStrings.cardList[index]["subTitle"].toString(),
              );
            },
          ),
        ],
      ),
    );
  }


  Widget _boxDesign({required String path,required String title,required String subtitle}){
    return Container(
      padding: EdgeInsets.all(2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1.w),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1.w,
            blurRadius: 1.w,
            offset: Offset(0, 1.w),
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(path,width: 10.w,height: 10.w,),
          SizedBox(height: 1.w,),
          AppTextWidget(
              text: title,
              fontSize: 6.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 1.w,),
          AppTextWidget(
            text: subtitle,
            fontSize: 3.sp,
          )
        ],
      ),
    );
  }
}
