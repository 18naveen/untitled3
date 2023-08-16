

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/Screens/excercise.dart';

class workOut extends ChangeNotifier{
  List<excercise> workout=[];
  late excercise currentworkout ;
  int currentindex=0;
  bool waiting=false;
  set_workout(List<excercise> work){
    workout=work;
    notifyListeners();
  }

  nxt_excersice(){
  }
  breaktime(int breaktime){
   waiting=true;
   notifyListeners();
   Timer(Duration(seconds: breaktime), () {
     waiting=false;
     currentindex+=1;

     notifyListeners(); });
   }


}


