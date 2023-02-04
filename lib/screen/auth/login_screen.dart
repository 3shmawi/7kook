
import 'package:flutter/material.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/widget/shared_widget.dart';

import '../../unit/routes_manager.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final TextEditingController phoneController=TextEditingController();
  GlobalKey<FormState> kForm=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: ConstantColor.primaryColor,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: kForm,
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Image.asset(ImageConstant.logoImage,height: 150,width: 200),
                Container(
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
                      textWidget(text: 'أدخل رقم الهاتف لتسجيل الدخول', fontSize: 16),
                      const SizedBox(height: 60,),
                      defaultTextFiled(
                          controller: phoneController,
                          inputType: TextInputType.number,
                          labelText: 'رقم الهاتف',
                          suffixText: '+966',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل رقم الهاتف';
                            }
                          }
                      ),
                      const SizedBox(height: 60,),
                      mainButton(text: 'استمرار', fct: (){
                        if(kForm.currentState!.validate()){
                          Navigator.of(context).pushReplacementNamed(Routes.otpRoute);
                        }
                      }),
                      const SizedBox(height: 40,),
                      textSpanWidget(
                        textOne: 'إذا لم  يكن لديك حساب  ',
                        textTwo: 'سجل من هنا ؟',
                        colorOne: ConstantColor.secondaryColor,
                        colorTwo: ConstantColor.primaryColor,
                        fontSize: 15,
                        onTap:()=>Navigator.of(context).pushReplacementNamed(Routes.registerRoute),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OTPScreen extends StatelessWidget {
   OTPScreen({Key? key}) : super(key: key);
   final TextEditingController otpCode=TextEditingController();
   GlobalKey<FormState> kForm=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Directionality(
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
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 60),
                margin: const EdgeInsets.symmetric(horizontal: 30,),
                decoration: BoxDecoration(
                    color: ConstantColor.whiteColor,
                    borderRadius: BorderRadius.circular(SizedConstant.radiusAuthSize)
                ),
                child: Form(
                  key: kForm,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      textWidget(text: 'أدخل الكود المرسل الى هاتفك', fontSize: 16),
                      const SizedBox(height: 60,),
                      defaultTextFiled(
                          controller: otpCode,
                          inputType: TextInputType.number,
                          labelText: 'ادخل الكود',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل الكود';
                            }
                          }
                      ),
                      const SizedBox(height: 60,),
                      mainButton(text: 'استمرار', fct: (){
                        if(kForm.currentState!.validate()){
                         Navigator.of(context).pushReplacementNamed(Routes.welcomeRoute);
                        }
                      }),


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
