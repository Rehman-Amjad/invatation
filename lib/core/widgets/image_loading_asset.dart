import 'package:flutter/material.dart';


class ImageLoadingAsset extends StatelessWidget {
  final String assetPath;
  BoxFit? boxFit;
  double? width,height;
   ImageLoadingAsset({super.key, required this.assetPath,this.width,this.height,this.boxFit});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: precacheImage(AssetImage(assetPath), context),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return Image.asset(assetPath,width: width, height: height,fit: boxFit,);
        } else {
          return const Center(child:  CircularProgressIndicator());
        }
      },
    );
  }
}
