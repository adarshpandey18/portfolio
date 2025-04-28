import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors/custom_colors.dart';

class CenterButtonWidget extends StatelessWidget {
  final String title;
  const CenterButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: CustomColors.accentColor.withOpacity(0.6),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, 0),
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: CupertinoButton(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        color: CustomColors.accentColor,
        child: Text(
          title,
          style: TextStyle(
            color: CustomColors.cardColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
