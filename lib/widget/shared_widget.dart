
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hokok/unit/constant.dart';

Widget textWidget({
  required String text,
  required double fontSize,
  Color? color,
  FontWeight? fontWeight,
  TextAlign? textAlign,
}){
  return Text(text,
  textAlign: textAlign??TextAlign.start,
  style: TextStyle(
    fontSize: fontSize,
    color: color??ConstantColor.secondaryColor,
    fontWeight: fontWeight??FontWeight.normal,
    fontFamily: 'googleFont'
  ),);
}


navOff({required BuildContext context,required Widget screen}){
  Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>screen));
}


navTo({required BuildContext context,required Widget screen}){
  Navigator.push(context,MaterialPageRoute(builder: (context)=>screen));
}

navAndRemove({required BuildContext context,required Widget screen}){
  Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=>screen),(route) => false);
}

Widget textSpanWidget({
  required String textOne,
  required String textTwo,
   FontWeight? fontWeight,
   required Color colorOne,
   required Color colorTwo,
   double? fontSize,
   Function()? onTap,
}){
  return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children: [
             TextSpan(text: textOne,
                style:  TextStyle(
                    color: colorOne,
                  fontWeight: fontWeight??FontWeight.normal,
                  fontSize: fontSize??11.0,
                )),
            TextSpan(text: textTwo,
              recognizer: TapGestureRecognizer()..onTap =  onTap,
              style:  TextStyle(
                  color: colorTwo,
                fontWeight: fontWeight??FontWeight.normal,
                fontSize: fontSize??11.0,
                ),),
          ]
      ));
}

Widget mainButton({
  required String text,
  required Function() fct,
  Color? color
}){
  return MaterialButton(
    onPressed: fct,
    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
    color: color??ConstantColor.primaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(SizedConstant.radiusAuthSize),
    ),
    child: textWidget(text: text, fontSize: 16,color: ConstantColor.whiteColor,fontWeight: FontWeight.bold),
  );
}

Widget defaultTextFiled({
  required TextEditingController controller,
  required TextInputType inputType,
  required String labelText,
   Widget? suffixIcon,
   String? suffixText,
  required FormFieldValidator<String> validator,
  ValueChanged<String>? onFieldSubmitted,
}){
  return  TextFormField(
    keyboardType:inputType ,
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: ConstantColor.primaryColor
      ),
      hintText: labelText,
      suffixIcon: suffixIcon,
      suffixText: suffixText,
      suffixStyle: TextStyle(fontWeight: FontWeight.bold,color: ConstantColor.primaryColor,fontSize: 20),
      contentPadding:const  EdgeInsets.all(20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizedConstant.radiusAuthSize),
        borderSide:BorderSide(color: ConstantColor.secondaryColor,width: 1),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(SizedConstant.radiusAuthSize),
        borderSide:BorderSide(color: ConstantColor.primaryColor,width: 1),
      ),
    ),
    validator: validator,
    onFieldSubmitted: onFieldSubmitted,

  );
}