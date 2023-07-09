import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   const MyButton({super.key, required this.buttonText, required this.onTap});

  final Function()? onTap;
  final String buttonText;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: sPrimary,
          borderRadius: BorderRadius.circular(sBorderRadius),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(buttonText,
              style: sPoppinsBold.copyWith(
                color:sWhite,
                fontSize:  16,
              ),),
              const SizedBox(width: 25),
              const Icon(Icons.arrow_forward,color: sWhite,),
            ],
          ),
        ),
      ),
    );
  }
}