
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/assts.dart';

import 'package:untitled3/backend/Db.dart';
import 'package:untitled3/provider/workprovider.dart';

import '../clock.dart';

enum excercises {body,legs,upper,lower}

class Work extends StatefulWidget {
  final excercises type;
  const Work({super.key, required this.type,});

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  bool showq=false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Db.get_Workouts(widget.type, context);
    // AnimationController an=AnimationController(vsync: cre);
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Consumer<workOut>(
      builder: (BuildContext context, wout , Widget? child) {

      return Scaffold(
        bottomSheet:
        DraggableScrollableSheet(
          snapAnimationDuration: const Duration(microseconds: 1),
          expand: false,
          initialChildSize: 0.22,
          minChildSize: 0.22 ,
          builder: (BuildContext context, ScrollController scrollController) {
          return SingleChildScrollView(
           controller: scrollController,
           child:  Container(
          decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(20)),
             child:Column(
               children: [
                 Icon(Icons.drag_handle),
                 ListView.builder(
                   controller: scrollController,
                     shrinkWrap: true,
                     itemCount: wout.workout.length-wout.currentindex,
                     itemBuilder: (context,index){
                     print("/////////////////${wout.currentindex}//////////////////////");
                   var x=wout.workout[wout.currentindex+index];
                   // return Container(height: 10,color: Colors.blue,);

                     return  ListTile(leading: Icon(Icons.alarm),title: Text(x.name),);

                 }),
               ],
             )
             /*      child: const Column(
              children: [

                Icon(Icons.drag_handle),

                ListTile(leading: Icon(Icons.alarm),title: Text("Sfsfsf"),),


              ],
            ),*/
          ),
        );


          },),


        backgroundColor: Colors.black12,
        body:!wout.waiting?Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    colorFilter: const ColorFilter.mode(Colors.black12, BlendMode.darken),
                    fit: BoxFit.fitHeight,
                    image:
                    NetworkImage(images.LScapeimg4)
                )


            ),
            padding: const EdgeInsets.fromLTRB(50, 150, 50, 20),
            child: Column(
              children: [




                Container(
                  height: 40,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText('do ${wout.workout[wout.currentindex].name}!',
                        textStyle:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 40,),

                      ),

                    ],
                    repeatForever: true,
                    onTap: (){},
                  ),
                ),
                const ClockTimer(min: 1,),
                Container(
                  height: 50,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('BE AWESOME'
                        ,textStyle:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),

                      ),
                      RotateAnimatedText('BE OPTIMISTIC'
                        ,textStyle:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),

                      ),
                      RotateAnimatedText(
                        'BE DIFFERENT',
                        textStyle:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),

                      ),
                    ],
                    onTap: (){},
                    isRepeatingAnimation: true,
                    totalRepeatCount: 3,
                  ),
                ),

              ],
            )


        ):Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

          ),
          padding: const EdgeInsets.fromLTRB(50, 150, 50, 20),
          child:  Column(
            children: [
              ClockTimer(min: wout.workout[wout.currentindex].duration, ),
              Container(
                height: 40,
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('take a break!',
                      textStyle:  GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 40,),

                    ),
                  ],
                  repeatForever: true,
                  onTap: (){},
                ),
              ) ,
              ElevatedButton(onPressed: ()=>Provider.of<workOut>(context,listen: false).breaktime(2), child: Text("wait",),)

            ],
          )


      )
      );}
    );
  }
}
