import 'package:flutter/material.dart';
import 'package:g_sport/screens/users/athletes.dart';
import 'package:g_sport/screens/users/fans.dart';

import 'appColor.dart';
import 'appStrings.dart';
import 'app_textStyle.dart';

class AppCard {
  static final fan = Builder(builder: (context) {
    return GestureDetector(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  height: 110,
                  width: 300,
                  // child: Image.asset(AppPics.flowering),
                ),
                Text(
                  AppStrings.fan,
                  style: AppTextStyle.textSize15
                      .copyWith(color: AppColors.textColor),
                )
              ],
            ),
          )),
      onTap: () {
        Navigator.pushNamed(context, Athletes.id);
      },
    );
  });

 

  static final athlete = Builder(builder: (context) {
    return GestureDetector(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 300,
                  //  child: Image.asset(AppPics.foliage)
                ),
                Text(
                  AppStrings.fan,
                  style: AppTextStyle.textSize15
                      .copyWith(color: AppColors.textColor),
                )
              ],
            ),
          )),
      onTap: () {
        Navigator.pushNamed(context, Fans.id);
      },
    );
  });
}
