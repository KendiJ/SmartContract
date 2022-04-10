
   
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:g_sport/screens/home/landing_page.dart';
import 'package:g_sport/screens/users/athletes.dart';
import 'package:g_sport/screens/users/fans.dart';
import 'package:g_sport/service/smart_contract_servive.dart';
import 'package:provider/provider.dart';

void main() => runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SmartContract()),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        Athletes.id: (context) => Athletes(),
        // ignore: equal_keys_in_map
        Fans.id: (context) => Fans(),
      },
    ),
  )
);
