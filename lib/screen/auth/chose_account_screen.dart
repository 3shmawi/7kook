
import 'package:flutter/material.dart';
import 'package:hokok/screen/auth/create_client_account_screen.dart';
import 'package:hokok/screen/auth/create_lawyer_account_screen.dart';
import 'package:hokok/screen/auth/login_screen.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/widget/shared_widget.dart';

class ChoseAccountScreen extends StatelessWidget {
  const ChoseAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ConstantColor.primaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Image.asset(ImageConstant.logoImage,height: 150,width: 200),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 60),
                margin: const EdgeInsets.symmetric(horizontal: 30,),
                decoration: BoxDecoration(
                    color: ConstantColor.whiteColor,
                    borderRadius: BorderRadius.circular(SizedConstant.radiusAuthSize)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    textWidget(text: 'انشاء حساب', fontSize: 16),
                    const SizedBox(height: 60,),
                    mainButton(text: 'انشاء حساب كعميل', fct: (){
                      navTo(context: context, screen: CreateClientAccountScreen());
                    }),
                    const SizedBox(height: 20,),
                    mainButton(text: 'انشاء حساب كمحامي', fct: (){
                      navTo(context: context, screen: CreateLawyerAccountScreen());
                    }),
                    const SizedBox(height: 60,),
                    InkWell(
                      onTap: (){
                        navOff(context: context, screen: LoginScreen());
                      },
                        child: textWidget(text: 'تسجيل الدخول', fontSize: 16)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
