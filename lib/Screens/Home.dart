
import "dart:math";
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/Screens/workout.dart';
import 'package:untitled3/assts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static const  String route="Home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> weekdays=["SUN","MON","TUE","WED","THU","FRI","SAT"];
  Widget homecard(IconData icn,String count,String lable){
   return Padding(
     padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 3),
     child: Container(
       width: 94,
       height: 135,
       padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[800]),
     child: Column(
       children: [
         Icon(icn,color: Colors.white,size: 45,),
         Text(count,style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 20,),),
         Text(lable,style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 15,),),
       ],
     ),
     ),
   );

 }

  Widget homecard2(List<int> callist,String cals){
    return Container(
        padding: const EdgeInsets.all(10),
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
                physics: const NeverScrollableScrollPhysics(),
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(radius: 50,backgroundImage: NetworkImage(images.Squareimg1)),
        ),title:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text("WELCOME BACK ",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 17,),),
            Text("CHEDIAN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
          ],
        ),),
     backgroundColor: Colors.black12,
     body: ListView(
       padding: const EdgeInsets.all(10),
       children: [
         Row(
           mainAxisSize: MainAxisSize.max ,
           children: [
             homecard(Icons.directions_walk_outlined, "6.334", "STEPS"),
             homecard(Icons.local_fire_department_outlined, "3.1 KCAL", "CAL BURN"),
             homecard(Icons.favorite_outline, "123 BPM", "HEARTBEAT"),
           ],
         ),
         homecard2([
           const Duration(hours: 10).inHours,
           const Duration(hours: 20).inHours,
           const Duration(hours: 40).inHours,
           const Duration(hours: 70).inHours,
           const Duration(hours: 90).inHours,
            const Duration(hours: 10).inHours,
           const Duration(hours: 30).inHours,

         ], "122"),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("PERSONALIZED PLAN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 21,),),
               TextButton(onPressed: (){},child: Text("WELCOME BACK ",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontSize: 12,),)),

             ],
           ),
         ),
      ClipRRect(

        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapetimg1))),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("CHEST WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
            ),
            Text("8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
           Padding(
             padding: const EdgeInsets.only(left: 200.0),
             child: IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Work(type: excercises.upper,),)), icon: const Icon(Icons.arrow_forward,color: Colors.white,)),
           )
          ],
        )
            ,),
      ),
         const SizedBox(height: 15,),
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
                 Padding(
                   padding: const EdgeInsets.only(left: 200.0),
                   child: IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Work(type: excercises.legs,),)), icon: const Icon(Icons.arrow_forward,color: Colors.white,)),
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
                 Padding(
                   padding: const EdgeInsets.only(left: 200.0),
                   child: IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Work(type: excercises.body,),)), icon: const Icon(Icons.arrow_forward,color: Colors.white,)),
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
                 borderRadius: BorderRadius.circular(10),image: DecorationImage(fit: BoxFit.fitWidth,image: NetworkImage(images.LScapeimg4))),             child:Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("ARMS WORKOUT",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 25,),),
                 ),
                 Text("  8-10 MIN",style: GoogleFonts.robotoCondensed(color: Colors.grey[100],fontWeight: FontWeight.bold,fontSize: 18,),),
                 Padding(
                   padding: const EdgeInsets.only(left: 100.0),
                   child: IconButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Work(type: excercises.lower,),)), icon: const Icon(Icons.arrow_forward,color: Colors.white,)),
                 )
               ],
             )
             ,),
         )
       ],
     )

    );
  }
}
