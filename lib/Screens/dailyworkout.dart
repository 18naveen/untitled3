

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled3/assts.dart';

class DailyChallenge extends StatefulWidget {
  const DailyChallenge({Key? key}) : super(key: key);
  static const String route="DailyChallenge";

  @override
  State<DailyChallenge> createState() => _DailyChallengeState();
}

class _DailyChallengeState extends State<DailyChallenge> {
   // TabController controller=TabController(length: 2, vsync: );
  Widget challengewidget(progress){
    return    ClipRRect(

      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 150,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg2))),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("LOWER WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
            ),
            ElevatedButton(onPressed: () {  },
                clipBehavior: Clip.hardEdge,
            child: Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),)),

          ],
        )
        ,),
    ) ;

  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.grey[600],
          onPressed: () {  },child:const Icon(Icons.add_outlined)
            ),
        appBar: AppBar(
          title: Text("CHEDIAN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),

          backgroundColor: Colors.black,
        bottom: const TabBar(tabs: [Tab(
          text: "WeeKDays",
        ),
        Tab(
          text: "WeekEnd",
        )],),
        ),
        body: TabBarView(children: [
          ListView(
            padding: const EdgeInsets.all(10),
            children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg2))),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("LOWER WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                    ),
                    Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputChip(label: const Text("Start"),onPressed: (){},),
                          CircularPercentIndicator(
                            backgroundColor: Colors.grey[800]!,
                            radius: 22.0,
                            lineWidth: 6.0,
                            percent: 0.2,
                            center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                            progressColor: Colors.grey[100],
                          )
                        ],
                      ),
                    )
                                    ],
                )
                ,),
            ) ,
            const SizedBox(height: 15,),

            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg3))),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("ABS WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                    ),
                    Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputChip(label: const Text("Start"),onPressed: (){},),
                          CircularPercentIndicator(
                            backgroundColor: Colors.grey[800]!,
                            radius: 22.0,
                            lineWidth: 6.0,
                            percent: 0.2,
                            center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                            progressColor: Colors.grey[100],
                          )
                        ],
                      ),
                    )
                  ],
                )
                ,),
            ) ,
            const SizedBox(height: 15,),

            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg2))),             child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ARMS WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                  ),
                  Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputChip(label: const Text("Start"),onPressed: (){},),
                        CircularPercentIndicator(
                          backgroundColor: Colors.grey[800]!,
                          radius: 22.0,
                          lineWidth: 6.0,
                          percent: 0.2,
                          center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                          progressColor: Colors.grey[100],
                        )
                      ],
                    ),
                  )
                ],
              )
                ,),
            )
          ],),ListView(children: [
            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg2))),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("LOWER WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                    ),
                    Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputChip(label: const Text("Start"),onPressed: (){},),
                          CircularPercentIndicator(
                            backgroundColor: Colors.grey[800]!,
                            radius: 22.0,
                            lineWidth: 6.0,
                            percent: 0.2,
                            center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                            progressColor: Colors.grey[100],
                          )
                        ],
                      ),
                    )
                  ],
                )
                ,),
            ) ,
            const SizedBox(height: 15,),

            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg3))),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("ABS WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                    ),
                    Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputChip(label: const Text("Start"),onPressed: (){},),
                          CircularPercentIndicator(
                            backgroundColor: Colors.grey[800]!,
                            radius: 22.0,
                            lineWidth: 6.0,
                            percent: 0.2,
                            center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                            progressColor: Colors.grey[100],
                          )
                        ],
                      ),
                    )
                  ],
                )
                ,),
            ) ,
            const SizedBox(height: 15,),

            ClipRRect(

              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 150,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg2))),             child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("ARMS WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                  ),
                  Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InputChip(label: const Text("Start"),onPressed: (){},),
                        CircularPercentIndicator(
                          backgroundColor: Colors.grey[800]!,
                          radius: 22.0,
                          lineWidth: 6.0,
                          percent: 0.2,
                          center:Text("70%",style: GoogleFonts.robotoCondensed(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10,),),
                          progressColor: Colors.grey[100],
                        )
                      ],
                    ),
                  )
                ],
              )
                ,),
            )
          ],)
        ],),
      ),
    );
  }
}
