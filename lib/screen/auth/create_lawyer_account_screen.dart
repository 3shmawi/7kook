import 'package:flutter/material.dart';
import 'package:hokok/unit/constant.dart';
import 'package:hokok/widget/shared_widget.dart';

import '../../unit/routes_manager.dart';

class CreateLawyerAccountScreen extends StatelessWidget {
  CreateLawyerAccountScreen({Key? key}) : super(key: key);
  final TextEditingController nameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController phoneController=TextEditingController();
  final TextEditingController governorateController=TextEditingController();
  final TextEditingController locationController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final TextEditingController confirmPasswordController=TextEditingController();
  GlobalKey<FormState> kForm=GlobalKey<FormState>();

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
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 60),
                margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
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
                      textSpanWidget(
                        textOne: 'انشاء حساب  ',
                        textTwo: 'كمحامي',
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        colorOne: ConstantColor.primaryColor,
                        colorTwo: ConstantColor.secondaryColor,),
                      const SizedBox(height: 20,),
                      defaultTextFiled(
                          controller: nameController,
                          inputType: TextInputType.number,
                          labelText: 'اسم المستخدم',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل اسم المستخدم';
                            }
                          }
                      ),
                      const SizedBox(height: 10,),
                      defaultTextFiled(
                          controller: emailController,
                          inputType: TextInputType.number,
                          labelText: 'البريد الالكتروني',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل البريد الالكتروني';
                            }
                          }
                      ),
                      const SizedBox(height: 10,),
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
                      const SizedBox(height: 10,),
                      defaultTextFiled(
                          controller: governorateController,
                          inputType: TextInputType.number,
                          labelText: 'المحافظه',
                          suffixIcon:Icon(Icons.location_on_outlined,color: ConstantColor.primaryColor),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل المحافظه';
                            }
                          }
                      ),
                      const SizedBox(height: 10,),
                      defaultTextFiled(
                          controller: locationController,
                          inputType: TextInputType.number,
                          labelText: 'الموقع',
                          suffixIcon:Icon(Icons.map_outlined,color: ConstantColor.primaryColor),
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل الموقع';
                            }
                          }
                      ),
                      const SizedBox(height: 10,),
                      defaultTextFiled(
                          controller: passwordController,
                          inputType: TextInputType.number,
                          labelText: 'كلمه السر',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل كلمه السر';
                            }
                          }
                      ),
                      const SizedBox(height: 10,),
                      defaultTextFiled(
                          controller: confirmPasswordController,
                          inputType: TextInputType.number,
                          labelText: 'تاكيد كلمه السر',
                          validator: (value){
                            if(value!.isEmpty){
                              return 'من فضلك ادخل تاكيد كلمه السر';
                            }
                          }
                      ),
                      const SizedBox(height: 20,),
                      mainButton(text: 'انشاء حساب ', fct: (){
                        if(kForm.currentState!.validate()){
                          Navigator.of(context).pushReplacementNamed(Routes.welcomeRoute);
                        }
                      }),
                      const SizedBox(height: 20,),
                      textSpanWidget(
                        textOne: 'لديك حساب ؟ ',
                        textTwo: 'تسجيل الدخول',
                        colorOne: ConstantColor.secondaryColor,
                        colorTwo: ConstantColor.primaryColor,
                        fontSize: 15,
                        onTap: ()=>Navigator.of(context).pushReplacementNamed(Routes.loginRoute),
                      ),
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