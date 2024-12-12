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
              return FutureBuilder(
                future: _loadImage(AppStrings.cardList[index]["icon"].toString()),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    // Image loaded successfully
                    return _boxDesign(
                      path: AppStrings.cardList[index]["icon"].toString(),
                      title: AppStrings.cardList[index]["title"].toString(),
                      subtitle: AppStrings.cardList[index]["subtitle"].toString(),
                    );
                  } else {
                    // Show shimmer effect while loading
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(2.w),
                        ),
                      ),
                    );
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> _loadImage(String assetPath) async {
    await Future.delayed(const Duration(milliseconds: 100));
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
          Image.asset(AppIcons.personIcon,width: 10.w,height: 10.w,),
          SizedBox(height: 1.w,),
          AppTextWidget(
              text: "مشرفين",
              fontSize: 4.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 1.w,),
          AppTextWidget(
            text: "مشرفين بزي موحد",
            fontSize: 3.sp,
          )
        ],
      ),
    );
  }
}
