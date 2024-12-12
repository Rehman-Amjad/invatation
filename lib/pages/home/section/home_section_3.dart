import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import '../../../core/widget_export.dart';

class HomeSection3 extends StatelessWidget {
  const HomeSection3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4, // Number of items in a row
        crossAxisSpacing: 0.6.w, // Space between columns
        mainAxisSpacing: 0.6.w, // Space between rows
        childAspectRatio: 0.7, // Aspect ratio for each grid item
      ),
      itemCount: AppStrings.homeGridList.length,
      itemBuilder: (context, index) {
        return FutureBuilder(
          future: _loadImage(AppStrings.homeGridList[index]),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Image loaded successfully
              return ClipRRect(
                borderRadius: BorderRadius.circular(2.w),
                child: Image.asset(
                  AppStrings.homeGridList[index],
                  fit: BoxFit.cover,
                ),
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
    );
  }

  Future<void> _loadImage(String assetPath) async {
    await Future.delayed(const Duration(milliseconds: 100));
  }
}