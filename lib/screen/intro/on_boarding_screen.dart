
import 'package:flutter/material.dart';
import 'package:hokok/screen/auth/login_screen.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/widget/shared_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);
  var controller=PageController();

  List<Widget> textSpanList=[
    RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              const TextSpan(text: ' مرحبا بكم في تطبيق \n',
                  style:  TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                  )),
              TextSpan(text: 'حقوق',
                style:  TextStyle(
                    color: ConstantColor.primaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
            ]
        )),
    RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              const TextSpan(text: 'أكبر أبليكيشن مختص بالإستشارات القانونية في',
                  style:  TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                  )),
              TextSpan(text: ' السعوديه',
                style:  TextStyle(
                    color: ConstantColor.primaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
            ]
        )),
    RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              const TextSpan(text: 'أحصل علي',
                  style:  TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                  )),
              TextSpan(text: ' محاميك',
                style:  TextStyle(
                    color: ConstantColor.primaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
              TextSpan(text: ' الخاص وتواصل معة عبر التطبيق بكل بسرية',
                style:  TextStyle(
                    color: ConstantColor.whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
            ]
        )),
    RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            children: [
              const TextSpan(text: 'أحصل علي',
                  style:  TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w600
                  )),
              TextSpan(text: ' محاميك',
                style:  TextStyle(
                    color: ConstantColor.primaryColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
              TextSpan(text: ' الخاص وتواصل معة عبر التطبيق بكل بسرية',
                style:  TextStyle(
                    color: ConstantColor.whiteColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w600
                ),),
            ]
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.secondaryColor,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
              onPageChanged: (index){
                if(index==textSpanList.length-1){
                  navOff(context: context, screen: LoginScreen());
                }
              },
              controller: controller,
              itemCount: textSpanList.length,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context,index){
                return Center(child: SizedBox(
                  width: MediaQuery.of(context).size.width*0.8,
                  child: textSpanList[index],
                ),);
              }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              textWidget(text: 'مرر يساراً', fontSize: 16,color: ConstantColor.whiteColor),
              const SizedBox(height: 10,),
              SmoothPageIndicator(controller: controller,
                count: textSpanList.length,
                effect: ExpandingDotsEffect(
                    activeDotColor: ConstantColor.primaryColor,
                    dotHeight: 10,
                    dotWidth: 20,
                    dotColor: ConstantColor.whiteColor
                ),),
              const SizedBox(height: 120,),
            ],
          )
        ],
      ),
    );
  }
}
