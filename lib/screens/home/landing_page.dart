import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:g_sport/screens/appStuff/app_card.dart';

class HomePage extends StatefulWidget {
  static const id = 'home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 10

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppCard.athlete,
                      ],
                    ),
                    SizedBox(height: 20,),
                   
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AppCard.athlete,
                      ],
                    ),
                    SizedBox(height: 20,),
                   
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}