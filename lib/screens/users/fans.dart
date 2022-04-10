import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_sport/screens/appStuff/appColor.dart';
import 'package:g_sport/screens/appStuff/appStrings.dart';
import 'package:g_sport/screens/appStuff/app_textStyle.dart';
import 'package:g_sport/service/smart_contract_servive.dart';
import 'package:provider/provider.dart';

class Fans extends StatefulWidget {
  static const id = 'fan';
  @override
  _FansState createState() => _FansState();
}

class _FansState extends State<Fans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            AppStrings.athlete,
            style:
                AppTextStyle.textSize20.copyWith(color: AppColors.primaryColor),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  AppStrings.info,
                  style: AppTextStyle.textSize28
                      .copyWith(color: AppColors.textColor),
                ),
                SizedBox(height: 20),
                AthleteCard(
                  imageUrl: "",
                  rating: 0,
                  description: "All description goes here",
                  endowseOnpressedCallback: () async {
                   Provider.of<SmartContract>(
                            context,
                            listen: false)
                        .transact();
                  },
                  ratingOnpressedCallback: () {},
                ),
                SizedBox(height: 20),
                AthleteCard(
                  imageUrl: "",
                  rating: 0,
                  description: "second description goes here",
                  endowseOnpressedCallback: () {},
                  ratingOnpressedCallback: () {},
                ),
                SizedBox(height: 20),
                AthleteCard(
                  imageUrl: "",
                  rating: 0,
                  description: "third description goes here",
                  endowseOnpressedCallback: () {},
                  ratingOnpressedCallback: () {},
                ),
              ],
            ),
          ),
        ));
  }
}

class AthleteCard extends StatelessWidget {
  const AthleteCard({
    required this.imageUrl,
    required this.rating,
    required this.description,
    required this.ratingOnpressedCallback,
    required this.endowseOnpressedCallback,
    Key? key,
  }) : super(key: key);

  final String imageUrl;
  final double rating;
  final String description;
  final Function()? ratingOnpressedCallback;
  final Function()? endowseOnpressedCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.teal[100],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
              ),
              Text("Rating: $rating"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(description),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: ratingOnpressedCallback,
                child: Text("Rating"),
              ),
              ElevatedButton(
                onPressed: endowseOnpressedCallback,
                child: Text("Endowse"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
