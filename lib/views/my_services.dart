import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_buttons.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import 'package:url_launcher/url_launcher.dart';

import '../globals/app_text_styles.dart';

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  bool isApp = false, isGraphic = false, isDataAnalyst = false;

  final onHoverActive = Matrix4.identity()..translate(0, -10, 0);
  final onHoverRemove = Matrix4.identity()..translate(0, 0, 0);


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                isApp = value;
              });
            },
            child: buildAnimatedContainer(
              title: 'Consulting',
              asset: AppAssets.code,
              hover: isApp,
            ),
          ),
          Constants.sizedBox(height: 24.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isGraphic = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Graphic Designing',
          //     asset: AppAssets.brush,
          //     hover: isGraphic,
          //   ),
          // ),
          Constants.sizedBox(height: 24.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isDataAnalyst = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Digital Marketing',
          //     asset: AppAssets.analyst,
          //     hover: isDataAnalyst,
          //   ),
          // )
        ],
      ),
      tablet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'الاستشارات ',
                  asset: 'assets/images/work1.jpg',
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isGraphic = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Graphic Designing',
              //     asset: AppAssets.brush,
              //     hover: isGraphic,
              //   ),
              // ),
            ],
          ),
          Constants.sizedBox(height: 26.0),
          // InkWell(
          //   onTap: () {},
          //   onHover: (value) {
          //     setState(() {
          //       isDataAnalyst = value;
          //     });
          //   },
          //   child: buildAnimatedContainer(
          //     title: 'Digital Marketing',
          //     asset: AppAssets.analyst,
          //     hover: isDataAnalyst,
          //     width: 725.0,
          //     hoverWidth: 735.0,
          //   ),
          // )
        ],
      ),
      desktop: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildMyServicesText(),
          Constants.sizedBox(height: 60.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    isApp = value;
                  });
                },
                child: buildAnimatedContainer(
                  title: 'تقديم الاستشارات ',
                  asset: AppAssets.code,
                  hover: isApp,
                ),
              ),
              Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isGraphic = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Graphic Designing',
              //     asset: AppAssets.brush,
              //     hover: isGraphic,
              //   ),
              // ),
              Constants.sizedBox(width: 24.0),
              // InkWell(
              //   onTap: () {},
              //   onHover: (value) {
              //     setState(() {
              //       isDataAnalyst = value;
              //     });
              //   },
              //   child: buildAnimatedContainer(
              //     title: 'Digital Marketing',
              //     asset: AppAssets.analyst,
              //     hover: isDataAnalyst,
              //   ),
              // )
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.04,
      bgColor: AppColors.bgColor,
    );
  }

  FadeInDown buildMyServicesText() {
    return FadeInDown(
      duration: const Duration(milliseconds: 1200),
      child: RichText(
        text: TextSpan(
          text: 'الخدمة ',
          style: AppTextStyles.headingStyles(fontSize: 30.0),
          children: [
            TextSpan(
              text: 'المقدمة ',
              style: AppTextStyles.headingStyles(
                  fontSize: 30.0, color: AppColors.robinEdgeBlue),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildAnimatedContainer({
    required String title,
    required String asset,
    required bool hover,
    double width = 350,
    double hoverWidth = 360,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: MediaQuery.of(context).size.width*0.8,
      //hover ? hoverWidth : width,
      height: 444,
      alignment: Alignment.center,
      transform: hover ? onHoverActive : onHoverRemove,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.bgColor2,
        borderRadius: BorderRadius.circular(30),
        border:
            hover ? Border.all(color: AppColors.themeColor, width: 3) : null,
        boxShadow: const [
          BoxShadow(
            color: Colors.black54,
            spreadRadius: 4.0,
            blurRadius: 4.5,
            offset: Offset(3.0, 4.5),
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/images/analytics.png',
            width: 90,
            height: 90,
           // color: AppColors.themeColor,
          ),
          Constants.sizedBox(height: 30.0),
          Text(
            title,
            style: AppTextStyles.montserratStyle(
                color: Colors.white, fontSize: 22.0),
          ),
          Constants.sizedBox(height: 12.0),
          Expanded(
            child: Text(
              '''ارفع مستوى عملك إلى آفاق جديدة من خلال خدماتنا الاستشارية المتخصصة المصممة خصيصًا للمؤسسات واسعة النطاق. نحن ملتزمون بحل التحديات المعقدة وتوجيه الشركات نحو تحقيق أهدافها الإستراتيجية تحت قيادة السيد عمر مكرم. بدءًا من تحسين الكفاءة التشغيلية وحتى تنفيذ الاستراتيجيات التحويلية، نقدم حلولاً شاملة مصممة لتحقيق النجاح في السوق الديناميكي اليوم. أطلق العنان للإمكانات الكاملة لمؤسستك من خلال تحليلاتنا الثاقبة وخبرتنا الصناعية. على استعداد للشروع في رحلة تحويلية؟ سجل معنا اليوم لتحديد موعد لاجتماع  استشاري شخصية لمدة ساعة كاملة علي منصة زوم . دعونا نرسم مسارًا لنجاح شركتك معًا.''',
              style: AppTextStyles.normalStyle(fontSize: 14.0),
              textAlign: TextAlign.center,
            ),
          ),
          Constants.sizedBox(height: 20.0),
          AppButtons.buildMaterialButton(buttonName: 'تواصل الان للحجز ', onTap: () {

            openWhatsApp('+201111644480');
          })
        ],
      ),
    );
  }
}

openWhatsApp(String phone) async {
    String url = "https://wa.me/$phone";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
       await launch(url);
      throw 'Could not launch $url';
    }
  }