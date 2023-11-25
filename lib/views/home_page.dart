import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/app_text_styles.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:my_portfolio/widgets/profile_animation.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final socialButtons = <String>[
    //AppAssets.facebook,
    // AppAssets.twitter,
    AppAssets.linkedIn,
    // AppAssets.insta,
    // AppAssets.github,
  ];

  // ignore: prefer_typing_uninitialized_variables
  var socialBI;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomePersonalInfo(size),
          Constants.sizedBox(height: 25.0),
          const ProfileAnimation()
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomePersonalInfo(size)),
          const ProfileAnimation(),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomePersonalInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            'مرحبا انه انا',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'عمر مكرم ',
            style: AppTextStyles.headingStyles(
              fontSize: 44
            ),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                'وأنا ',
                style: AppTextStyles.montserratStyle(color: Colors.white),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'مطور الاعمال التنفيذيه',
                    textStyle:
                        AppTextStyles.montserratStyle(color: Colors.lightBlue),
                  ),
                  TyperAnimatedText('مستشار التسويق',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue)),
                  TyperAnimatedText('مستشار ذو خبرة',
                      textStyle: AppTextStyles.montserratStyle(
                          color: Colors.lightBlue))
                ],
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              )
            ],
          ),
        ),
        Constants.sizedBox(height: 15.0),
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                '''علي خبرة عالية بالخدمات اللوجستية والعلاقات العامة وإدارة الأعمال العامة والمهارات القيادية. من ذوي الخبرة في السوق الروسية والأوكرانية مع فهم قوي للممارسات التجارية الدولية. خبرة جيدة في تطوير وتحقيق استراتيجيات العمل، من خلال التعاون مع وحدات ووظائف العمل المختلفة. وتصاحب هذه التجربة مهارات اتصال قوية وموقف تنظيمي قوي متعدد الجنسيات، بالإضافة إلى مستوى عالٍ من التفاني والمشاركة في النجاح من خلال الفهم الكامل لجوهر الأعمال.
          
               '''
               ,
                style: AppTextStyles.normalStyle(),
              ),
            ),
          ),
        ),
        Constants.sizedBox(height: 22.0),
        Column(
          children: [
              Text('لتعرف اكثر يمكنك زيارة Linked in الخاص بي من هنا',
           style: AppTextStyles.normalStyle(
            fontSize: 17,
            color:Colors.grey[300]!
           ),
           ),
            Constants.sizedBox(height: 22.0),
            FadeInUp(
              duration: const Duration(milliseconds: 1600),
              child: SizedBox(
                height: 78,
                child: ListView.separated(
                  itemCount: socialButtons.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, child) =>
                      Constants.sizedBox(width: 8.0),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {

                        // if(index==0){
                        //  launchInBrowser(Uri.parse('https://www.facebook.com/profile.php?id=694348792&locale=ar_AR'));
                        // }
                        
                       // else{
                          
                       
                        launchInBrowser(Uri.parse('https://www.linkedin.com/in/omar-makram-21564419/'));
                        //}

                        //https://www.linkedin.com/in/omar-makram-21564419/




                      },
                      onHover: (value) {
                        setState(() {
                          if (value) {
                            socialBI = index;
                          } else {
                            socialBI = null;
                          }
                        });
                      },
                      borderRadius: BorderRadius.circular(550.0),
                      hoverColor: AppColors.themeColor,
                      splashColor: AppColors.lawGreen,
                      child: buildSocialButton(
                          asset: socialButtons[index],
                          hover: socialBI == index ? true : false),
                    );
                  },
                ),
              ),
            ),
         

         
          ],
        ),
        Constants.sizedBox(height: 18.0),
    //     FadeInUp(
    //       duration: const Duration(milliseconds: 1800),
    //       child: AppButtons.buildMaterialButton(
    //           onTap: () {
    // launchInBrowser(Uri.parse('https://www.facebook.com/profile.php?id=694348792&locale=ar_AR'));
    //           }, buttonName: 'Download CV'),
    //     ),
      ],
    );
  }

 Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
  
      throw Exception('Could not launch $url');
    }
  }
  
  Ink buildSocialButton({required String asset, required bool hover}) {
    return Ink(
      width: 88,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.themeColor, width: 2.0),
        color: AppColors.bgColor,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(6),
      child: Image.asset(
        asset,
        width: 10,
        height: 12,
        color: hover ? AppColors.bgColor : AppColors.themeColor,
        // fit: BoxFit.fill,
      ),
    );
  }
}
