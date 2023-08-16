

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:untitled3/assts.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);
  static const String route="Setting";

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> weekdays=["SUN","MON","TUE","WED","THU","FRI","SAT"];
  Widget homecard2(List<int> callist,String cals){
    return Container(
        padding: EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),
        child: Column(
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[Text("CALORIES",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                Column(
                  children: [
                    Text("WEEKLY AVERAGE ",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 12,),),
                    Text("$cals CALS",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 14,),),
                  ],
                ),

              ],
            ),
            Expanded(
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: callist.length,
                itemBuilder: (context,index){

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color:  callist.reduce(max)== callist[index]?Colors.grey[100]:Colors.grey),
                        width: 33,
                        height: callist[index].toDouble(),
                      ),
                      Text(weekdays[index],style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 15,),),
                    ],
                  );}, separatorBuilder: (BuildContext context, int index) {return Container(width: 8,);  },),
            ),
          ],
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [Padding(
          padding: const EdgeInsets.only(right: 8,),
          child: IconButton(icon: Icon(Icons.settings,color: Colors.white,), onPressed: () {  },),
        )],
        title: Text("Profile",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
        // centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: ListView(

        padding: EdgeInsets.symmetric(horizontal: 30),
        children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(images.Squareimg2,scale: 50,),),
         Center(
             // padding: EdgeInsets.symmetric(vertical: 12,horizontal: 20),
             child: Padding(
               padding: const EdgeInsets.all(7.0),
               child: Text("Chedian aKa VADAKAN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
             )),
         Center(child: Text("@chedianpodiyan",style: GoogleFonts.robotoCondensed(color: Colors.grey[400],fontWeight: FontWeight.w300,fontSize: 15,),)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75.0,vertical: 10),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[600],),
              child: Row(

            children: [
              const Icon(Icons.monetization_on_outlined,color: Colors.orangeAccent,),
              Text( " Premium",style: GoogleFonts.robotoCondensed(color: Colors.white,fontSize: 20,),),
            ],
          )),
        ),
          Row(
            // crossAxisAlignment: ,
          children: [
            Column(children: [     Text("24",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 21,),),
              Text("Total Exercise",style: GoogleFonts.robotoCondensed(color: Colors.grey[400],fontWeight: FontWeight.w500,fontSize: 13,),),
            ],),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(width: 1.5,color: Colors.grey,height: 20,),
            ),

            Column(children: [     Text("24K",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 21,),),
              Text("Friends",style: GoogleFonts.robotoCondensed(color: Colors.grey[400],fontWeight: FontWeight.w500,fontSize: 13,),),
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(width: 1.5,color: Colors.grey,height: 20,),
            ),
            Column(children: [     Text("24",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 21,),),
              Text("Following",style: GoogleFonts.robotoCondensed(color: Colors.grey[400],fontWeight: FontWeight.w500,fontSize: 13,),),
            ],),
                      ],
          ),
          Container(
            height: 35,
            child: Row(
              children: [
              Expanded(child:
              Container(
                padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 50) ,
                decoration:BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                child:Text("Edit Profile",style: GoogleFonts.robotoCondensed(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14,),),) ),
                // InputChip(label:IconButton(icon: Icon(Icons.messenger_outline,color: Colors.white,),onPressed: null,),),
               SizedBox(width: 10,),
                Container(
                 // padding:EdgeInsets.symmetric(horizontal: 2,vertical: 1) ,
                 decoration:BoxDecoration(color: Colors.grey[700],borderRadius: BorderRadius.circular(20)),
                 child:IconButton(onPressed: () {  }, icon: Icon(Icons.messenger_outlined,size: 17,color: Colors.white,),) ),

    ],
            ),
          ),
          Divider(thickness: 0.7,height: 30,color: Colors.grey,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text("Workout Program",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
              Text("Sell All",style: GoogleFonts.robotoCondensed(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14,),),

            ],
          ),
          SizedBox(height: 20,),
          Container(height: 180,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[700]),
          child: SfCartesianChart(
            // Initialize category axis
              primaryXAxis: CategoryAxis(),
               backgroundColor:Colors.black,
              // borderColor :Colors.white,
              // plotAreaBackgroundColor:Colors.white,
              // plotAreaBorderColor:Colors.white,
              series: <LineSeries<SalesData, String>>[
                LineSeries<SalesData, String>(
                   pointColorMapper: (SalesData,ind)=>Colors.white,
                  color: Colors.black,

                  // Bind data source
                    dataSource:  <SalesData>[
                      SalesData('Jan', 35),
                      SalesData('Feb', 28),
                      SalesData('Mar', 34),
                      SalesData('Apr', 32),
                      SalesData('May', 40)
                    ],
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales
                )
              ]
          )
          )

      ],) ,

    );
  }
}

class SalesData {
  SalesData(this.year,this.sales);
  String year;
  int sales;
}