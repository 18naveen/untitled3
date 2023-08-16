

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DietScreen extends StatefulWidget {
  const DietScreen({Key? key}) : super(key: key);

  @override
  State<DietScreen> createState() => _DietScreenState();
}

class _DietScreenState extends State<DietScreen> {
  static String route="DietScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello ",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 17,),),
          Text("CHEDIAN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
        ],
      ),),
      backgroundColor: Colors.black12,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircularPercentIndicator(
                    backgroundColor: Colors.grey[800]!,
                    radius: 42.0,
                    lineWidth: 6.0,
                    percent: 0.2,
                    center:const Icon(Icons.favorite_rounded,color: Colors.white,),
                    progressColor: Colors.grey[100],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text("Heart Pts",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 21,),),
                  ),

                ],
              ),Column(

                children: [
                  CircularPercentIndicator(
                    backgroundColor: Colors.grey[800]!,
                    radius: 40.0,
                    lineWidth: 6.0,
                    percent: 0.2,
                    center:const Icon(Icons.water_drop_outlined,color: Colors.white,),
                    progressColor: Colors.grey[100],
                  ),
               Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Text("Water",style: GoogleFonts.robotoCondensed(
                    color: Colors.grey[100],fontWeight: FontWeight.bold,
                    fontSize: 21,),),
            ),

        ],
              )
            ],),
          ),
        const Divider(color: Colors.white38,thickness: 1,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
            child: Container(
              // width: 94,
              height: 110,
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.run_circle_outlined,color: Colors.white,size: 45,),
                  Column(
                    children: [
                      Text("223 km  24556 steps",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
                      Text("Aprox 45KCALS Burned 🔥",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 15,),),
                    ],
                  ),
                ],
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
            child: Container(
              // width: 94,
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.brightness_medium_outlined,color: Colors.white,size: 45,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("25 min meditation",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
                      Text("Completed last day 🔥",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 15,),),
                    ],
                  ),
                ],
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10),
            child: Container(
              // width: 94,
              height: 110,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 25),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.water_drop,color: Colors.white,size: 45,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Drink 4 glass (1liter) ",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
                      Text("Drank 2 liters 🔥",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 15,),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
