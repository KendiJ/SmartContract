import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_sport/screens/appStuff/appColor.dart';
import 'package:g_sport/screens/appStuff/appStrings.dart';
import 'package:g_sport/screens/appStuff/app_textStyle.dart';

class Athletes extends StatefulWidget {
  static const id = 'cuctus';
  @override
  _AthletesState createState() => _AthletesState();
}

class _AthletesState extends State<Athletes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          AppStrings.fan, 
          style: AppTextStyle.textSize20.copyWith(color: AppColors.primaryColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Text(
                AppStrings.info,
                style: AppTextStyle.textSize28.copyWith(color: AppColors.textColor),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.teal[900],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      bottomLeft: Radius.circular(40),
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      )
      
    );
  }
}