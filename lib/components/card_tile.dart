import 'package:f22_chefsgalore/components/app_style.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({super.key, required this.imagePath, required this.onTap});
  final String imagePath;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            boxShadow: const [BoxShadow(blurRadius: 25, color: sGray4)],
            borderRadius: BorderRadius.circular(sBorderRadius),
            color: sWhite),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
