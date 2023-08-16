

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Drasboard.dart';
import 'package:untitled3/Screens/Home.dart';
import 'package:untitled3/Screens/dailyworkout.dart';
import 'package:untitled3/Screens/detailscren.dart';
import 'package:untitled3/Screens/setting.dart';

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings ){
    final args =settings.arguments;
    switch(settings.name){
      case Home.route : return MaterialPageRoute(builder:(context)=>const Home() );
      case Drashboard.route : return MaterialPageRoute(builder:(context)=>const Drashboard() );
      case Setting.route :return MaterialPageRoute(builder:(context)=>const Setting());
      case DetailScreen.route :return MaterialPageRoute(builder:(context)=>const DetailScreen());
      case DailyChallenge.route: return MaterialPageRoute(builder:(context)=>const DailyChallenge());
      default :return MaterialPageRoute(builder:(context)=>const MaterialApp(home: Center(child: Text("Error in page"),),));

    }


  }
}