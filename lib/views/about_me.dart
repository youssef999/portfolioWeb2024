import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/globals/app_assets.dart';
import 'package:my_portfolio/globals/app_colors.dart';
import 'package:my_portfolio/globals/constants.dart';
import 'package:my_portfolio/helper%20class/helper_class.dart';
import '../globals/app_buttons.dart';
import '../globals/app_text_styles.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildAboutMeContents(),
          Constants.sizedBox(height: 35.0),
          buildProfilePicture(),
        ],
      ),
      tablet: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      desktop: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildProfilePicture(),
          Constants.sizedBox(width: 25.0),
          Expanded(child: buildAboutMeContents())
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.bgColor2,
    );
  }

  FadeInRight buildProfilePicture() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1200),
      child: Image.asset(
        AppAssets.profile2,
        height: 450,
        width: 400,
      ),
    );
  }

  Column buildAboutMeContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        // FadeInRight(
        //   duration: const Duration(milliseconds: 1200),
        //   child: RichText(
        //     text: TextSpan(
        //       text: 'عن ',
        //       style: AppTextStyles.headingStyles(fontSize: 30.0),
        //       children: [
        //         TextSpan(
        //           text: 'نفسي ',
        //           style: AppTextStyles.headingStyles(
        //               fontSize: 30, color: AppColors.robinEdgeBlue),
        //         )
        //       ],
        //     ),
        //   ),
        // ),

Constants.sizedBox(height: 12.0),
        // FadeInLeft(
        //   duration: const Duration(milliseconds: 1400),
        //   child: Positioned(
        //     left: 1,
        //     child: Text(
        //       'الخبرات ',
        //       style: AppTextStyles.montserratStyle(color: 
        //       Colors.black,
        //       fontSize: 44
        //       ),
        //     ),
        //   ),
        // ),
        Constants.sizedBox(height: 12.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            
             Column(
               children: [
                 Column(
                  children: [
                    Text(
                      'مدير تطوير الأعمال',
                    
                      style: AppTextStyles.normalStyle(),
                    ),
                    Text('شركة بتروفيت لتجارة النفط',
                    style:TextStyle(
                      fontSize:17,
                      color:Colors.grey[500]
                    ),
                    ),
                    /* '\nBusiness Development Consultant'
                      '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                      '\nOrganizational Behavior '
                      '\nBusiness Development Consultant'
                      */
                  ],
            ),

             Column(
              children: [
                Text(
                  'استشاري تطوير الأعمال',
        
                  style: AppTextStyles.normalStyle(),
                ),
                Text('مام للصناعات الهندسية والتوريدات الكهربائية',
                style:TextStyle(
                  fontSize:17,
                  color:Colors.grey[500]
                ),
                ),
                /* '\nBusiness Development Consultant'
                  '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                  '\nOrganizational Behavior '
                  '\nBusiness Development Consultant'
                  */
              ],
            ),

              Column(
              children: [
                Text(
                  'Multi-Trade-Cairo',
        
                  style: AppTextStyles.normalStyle(),
                ),
                Text('التجارة بالقاهرة مستشار الرئيس التنفيذي',
                style:TextStyle(
                  fontSize:17,
                  color:Colors.grey[500]
                ),
                ),
                /* '\nBusiness Development Consultant'
                  '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                  '\nOrganizational Behavior '
                  '\nBusiness Development Consultant'
                  */
              ],
            ),


             Column(
              children: [
                Text(
                  'مدير التطوير',
        
                  style: AppTextStyles.normalStyle(),
                ),
                Text('ملف تعريف واضح للتقدم والخدمات اللوجستية والعلاقات العامة وإدارة الأعمال العامة والمهارات القيادية. من ذوي الخبرة في السوق الروسية والأوكرانية مع فهم قوي للممارسات التجارية الدولية. خبرة جيدة في تطوير وتحقيق استراتيجيات العمل، من خلال التعاون مع وحدات ووظائف العمل المختلفة. وتصاحب هذه التجربة مهارات اتصال قوية وموقف تنظيمي قوي متعدد الجنسيات، بالإضافة إلى مستوى عالٍ من التفاني والمشاركة في النجاح من خلال الفهم الكامل لجوهر الأعمال.',
                style:TextStyle(
                  fontSize:17,
                  color:Colors.grey[500]
                ),
                ),
                /* '\nBusiness Development Consultant'
                  '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                  '\nOrganizational Behavior '
                  '\nBusiness Development Consultant'
                  */
              ],
            ),


 Column(
              children: [
                Text(
                  'استشاري تطوير الأعمال',
        
                  style: AppTextStyles.normalStyle(),
                ),
                Text('  الصفقة الأولى - الشركة المصنعة المعتمدة لملابس UMBRO الرياضية. الملابس الداخلية ذات العلامة التجارية (SR) لسوق شمال أفريقيا والخليج.',
                style:TextStyle(
                  fontSize:17,
                  color:Colors.grey[500]
                ),
                ),
                /* '\nBusiness Development Consultant'
                  '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                  '\nOrganizational Behavior '
                  '\nBusiness Development Consultant'
                  */
              ],
            ),

            Column(
              children: [
                Text(
                  'مدير التسويق وتطوير الأعمال',
        
                  style: AppTextStyles.normalStyle(),
                ),
                Text('  ابيكس مصر لحلول الأعمال',
                style:TextStyle(
                  fontSize:17,
                  color:Colors.grey[500]
                ),
                ),
                /* '\nBusiness Development Consultant'
                  '\nMulti Trade CairoMulti Trade CairoAdvisor To Chief Executive Officer'
                  '\nOrganizational Behavior '
                  '\nBusiness Development Consultant'
                  */
              ],
            ),
//
               ],
             ),
          ),
        ),
         Constants.sizedBox(height: 11.0),
        const Divider(),
        Constants.sizedBox(height: 11.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            'التراخيص والشهادات',
            style: AppTextStyles.montserratStyle(color: Colors.white),
          ),
        ),
        Constants.sizedBox(height: 8.0),
        FadeInLeft(
          duration: const Duration(milliseconds: 1600),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'تعلم العلامة التجارية الشخصية'
              '\n six sigma green belt'
              '\nتمويل الأعمال التجارية'
              '\nالسلوك التنظيمي'
              ,
              style: AppTextStyles.normalStyle(
                color:Colors.grey[500]!
              ),
            ),
          ),
        ),
        Constants.sizedBox(height: 15.0),
        // FadeInUp(
        //   duration: const Duration(milliseconds: 1800),
        //   child: AppButtons.buildMaterialButton(
        //       onTap: () {
                
        //       }, buttonName: 'Read More'),
        // ),

      ],
    );
  }
}
