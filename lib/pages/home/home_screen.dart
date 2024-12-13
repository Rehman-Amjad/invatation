import 'package:flutter/material.dart';
import 'package:invatation/pages/home/section/home_section_10.dart';
import 'package:invatation/pages/home/section/home_section_2.dart';
import 'package:invatation/pages/home/section/home_section_3.dart';
import 'package:invatation/pages/home/section/home_section_4.dart';
import 'package:invatation/pages/home/section/home_section_5.dart';
import 'package:invatation/pages/home/section/home_section_6.dart';
import 'package:invatation/pages/home/section/home_section_7.dart';
import 'package:invatation/pages/home/section/home_section_9.dart';
import 'package:sizer/sizer.dart';
import '../../constant.dart';
import '../../core/widget_export.dart';
import '../footer/web_footer.dart';
import '../web_header.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        children: [

          const WebHeader(),

          Padding(
              padding: EdgeInsets.all(8.w),
              child : Column(
                children: [
                  _headerSection(context),
                  SizedBox(height: defaultSpacing*2),
                  _rowHeading(text: "مـيـزايا",path: AppAssets.logo),

                  //Section 2 (Invite Point Section)
                  SizedBox(height: defaultSpacing),
                  const HomeSection2(),
                  SizedBox(height: defaultSpacing),

                  //Section 3 (Image gallery)
                  _rowHeading(text: "التصــاميــم"),
                  SizedBox(height: defaultSpacing/2),
                  const HomeSection3(),
                  SizedBox(height: defaultSpacing/3),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 30.w
                    ),
                    child: ButtonWidget(
                      width: 20.w,
                      text: "استعراض الكل",
                      onClicked: (){},
                    ),
                  ),

                  // section 4 (Arrow Points)
                  SizedBox(height: defaultSpacing*2),
                  _rowHeading(text: "خطـوات بسيطة لدعـوة أنيقة"),
                  const HomeSection4(),
                  SizedBox(height: defaultSpacing),

                  // section 5 (Cards)
                  SizedBox(height: defaultSpacing*6),
                  _rowHeading(text: "خــدمــتنا"),
                  SizedBox(height: defaultSpacing),
                  const HomeSection5(),
                  SizedBox(height: defaultSpacing*2),


                  //Section 6 (Price Section)
                  _rowHeading(text: "البــاقــات و الأسـعـار "),
                  SizedBox(height: defaultSpacing),
                  const HomeSection6(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 30.w
                    ),
                    child: ButtonWidget(
                      width: 20.w,
                      text: "استعراض الكل",
                      onClicked: (){},
                    ),
                  ),

                  //Section 7 (FAQ Section)
                  SizedBox(height: defaultSpacing*2),
                  _rowHeading(text: "اراء العمــلاء"),
                  SizedBox(height: defaultSpacing),
                  HomeSection7(),
                  SizedBox(height: defaultSpacing/2),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: 30.w
                    ),
                    child: ButtonWidget(
                      width: 20.w,
                      text: "اترك تعليقا",
                      onClicked: (){},
                    ),
                  ),

                  //Section 8 (Logo Text with Button)
                  SizedBox(height: defaultSpacing*1),
                  _logoSection(),

                  //Section 9 (Mobile Apps or Play Section)
                  SizedBox(height: defaultSpacing*2),
                  const HomeSection9(),

                  // section 10 (FAQ)
                  SizedBox(height: defaultSpacing*2),
                  HomeSection10(),
                ],
              )),

          const WebFooter(),
          // section 1



        ],
      ),
    );
  }

  Widget _headerSection(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ImageLoadingAsset(
            assetPath: AppAssets.header,
          ),
        ),

        SizedBox(width: 1.w,),
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppTextWidget(
                text: AppStrings.heroTitle,
                color: AppColors.primary,
                fontSize: 10.sp,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w200,
              ),
              SizedBox(height: 1.w,),
              AppTextWidget(
                text: AppStrings.heroSubTitle,
                color: AppColors.primary,
                fontSize: 6.sp,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w200,
              ),
              SizedBox(height: defaultSpacing/2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    width: 14.w,
                    text: "تواصل معانا",
                    onClicked: (){},
                    isShadow: false,
                    borderColor: AppColors.primary,
                    backgroundColor: Colors.white,
                    oneColor: true,
                    textColor: AppColors.primary,
                  ),
                  SizedBox(width: 1.5.w,),
                  ButtonWidget(
                    width: 14.w,
                    text: "إرســال الدعوة تجربية",
                    onClicked: (){},
                    isShadow: false,
                  ),
                ],
              )
            ],
          ),
        )

      ],
    );
  }

  Widget _rowHeading({required String text,String? path}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if(path !=null)...[
          Image.asset(path,width: 6.w,height: 6.w,),
          SizedBox(width: 1.w,),
        ],
        AppTextWidget(
          text: text,
          fontWeight: FontWeight.bold,
          fontSize: 6.sp,
        ),
      ],
    );
  }


  Widget _logoSection(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextWidget(
                  text: "وصـل... لأن دعـوتك تسـتحق\n أن تكـون ممـيزة.",
                  fontSize: 9.sp,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,

                ),
                SizedBox(height: 4.w,),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: 5.w
                  ),
                  child: ButtonWidget(
                    width: 22.w,
                    text: "احجز مناسبتك الآن",
                    onClicked: (){},
                  ),
                ),
              ],
            )
        ),
        SizedBox(width: 1.w,),
        Expanded(
            child: Padding(
              padding:  EdgeInsets.all(5.w),
              child: ImageLoadingAsset(assetPath: AppAssets.mainLogo),
            )
        ),

      ],
    );

  }
}
