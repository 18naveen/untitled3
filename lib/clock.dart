
import 'dart:async';
import 'package:intl/intl.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/backend/excercise.dart';
import 'package:untitled3/provider/workprovider.dart';

class ClockTimer extends StatefulWidget {
  final int min;
  const ClockTimer({super.key,required this.min,});

  @override
  State<ClockTimer> createState() => _TimerState();
}

class _TimerState extends State<ClockTimer> {
   int sec=0;
   int min=0;
   bool waitscreen=false;
   final formatter =  NumberFormat('00');

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    watch();
  }
  void watch(){
    Timer.periodic(
        const Duration(seconds: 1), (timer) {
        if(min!=widget.min){
        if (sec != 60) {
          setState(() {
            sec += 1;
          });
        } else {
          setState(() {
            sec = 0;
            min += 1;
          });
        }
      }else{
        setState(() {
          min=0;
          sec=0;
          waitscreen=true;
        });

        timer.cancel();
        Provider.of<workOut>(context,listen: false).breaktime(10);
      }
    } );

  }
  waiter(){
    Timer.periodic(
        const Duration(seconds: 1), (timer) {
      if(sec!=5) {
        if (sec != 60) {
          setState(() {
            sec += 1;
          });
        } else {
          setState(() {
            sec = 0;
            min += 1;
          });
        }
      }else{
        setState(() {
          sec = 0;
          min += 0;
        });

        timer.cancel();
        Provider.of<workOut>(context,listen: false).nxt_excersice();
      }
    } );

  }

  @override

  Widget build(BuildContext context) {
    return    Provider.of<workOut>(context,listen: false).waiting?Column(
      children: [

        Center(
          child: CircleAvatar(
            backgroundColor: Colors.black54,
            radius: 100,
            child: Text(
              "${formatter.format(min)}:${formatter.format(sec)}  "
            ,style:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 50,),),
          ),
        ),

      ],
    ):Center(

      child:  Column(
        children: [
          CircleAvatar(
          backgroundColor: Colors.black54,
          radius: 100,
          child: Text(
            "${formatter.format(min)}:${formatter.format(sec)}  "
            ,style:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 50,),),
    ),

        ],
      ),

    );
  }
}
