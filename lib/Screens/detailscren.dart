

import 'package:numberpicker/numberpicker.dart';
import 'package:untitled3/Drasboard.dart';
import 'package:untitled3/assts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';
import 'package:untitled3/Screens/Home.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static const route="DetailScreen";
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int pageno=0;
  bool lower=false;
  bool upper=false;
  bool weight =false;
  bool muscle =false;
  int age=12;
  int weigh=12;
  int height=12;
  Widget selection(context,image,bool selected,title){
    var size=MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),

      child: Container(
        width: size.width*0.5,
        height: size.height*0.75,
        padding: EdgeInsets.only(top: 90,left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.grey,

            border: selected? Border.all(color: Colors.grey,width: 5):null,
        image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(image),
          opacity:  selected? 0.7 : 1,
          //   colorFilter:ColorFilter.mode(Colors.grey, BlendMode.plus)
        )),

        child:  Text(title,style: TextStyle(color: Colors.grey[50],fontSize: 25,fontWeight: FontWeight.bold),),
      ),
    );

  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    body:IntroductionSlider(
      items:  [
        IntroductionSliderItem(
          title:Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.width,
            child: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10) ,
              children: [
                InkWell(
                    onTap:()=> setState(() {
                      weight=!weight;
                    }),
                    child: selection(context,images.LScapetimg1,weight,"Weight Lifting")),
                InkWell(
                    onTap:()=> setState(() {
                      muscle=!muscle;
                    }),
                    child: selection(context,images.LScapeimg3,muscle,"Muscles")),
                InkWell(
                    onTap:()=> setState(() {
                      upper=!upper;
                    }),
                    child: selection(context,images.LScapeimg4,upper,"Upper Body")),
                InkWell(
                    onTap:()=> setState(() {
                      lower=!lower;
                    }),
                    child: selection(context,images.LScapeimg2,lower,"Lower Body")),
              ],

            ),
          )
          // backgroundColor: Colors.red,
        ),

        IntroductionSliderItem(

          title:Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Text('"Losing weight is hard. Being fat is hard. Pick your hard"',style: TextStyle(fontWeight: FontWeight.w300,fontStyle: FontStyle.italic,fontSize: 20 ),),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text('your age: $age',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                    NumberPicker(
                      value: age,
                      minValue: 12,
                      maxValue: 100,
                      onChanged: (value) => setState(() => age = value),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    NumberPicker(
                      axis: Axis.horizontal,
                      value: weigh,
                      minValue: 12,
                      maxValue: 100,
                      onChanged: (value) => setState(() =>
                      weigh= value),
                    ),
                    Text('your age: $weigh kg',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),
                  ],
                ),
              ),       Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    NumberPicker(
                      axis: Axis.horizontal,
                      value: height,
                      minValue: 12,
                      maxValue: 100,
                      onChanged: (value) => setState(() => height = value),
                    ),
                    Text('your height: $height meters',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20 ),),

                  ],
                ),
              ),
            ],
          ),
        ),
        IntroductionSliderItem(
          // backgroundColor: Colors.blue,
        title: Column(
            children: [

              Image.network("https://www.mitomobile.com/wp-content/uploads/2020/01/all-FitBand-1-768x661.png",height: 200,),
              TextButton(onPressed: (){}, child: Text("Conntect you FitBand")),

              // ElevatedButton(onPressed: ()=>Navigator.popAndPushNamed(context, Drashboard.route), child: Text("Done"))

            ],
          ),

        ),
      ],
      done:  const Done(
        child: Icon(Icons.done),
        home: Drashboard(),
      ),
      next: const Next(child: Icon(Icons.arrow_forward)),
      back: const Back(child: Icon(Icons.arrow_back)),
      dotIndicator: const DotIndicator(),
    )

  );
}
}


 /*
 Slidable(
 // Specify a key if the Slidable is dismissible.
  key: const ValueKey(0),

 // The start action pane is the one at the left or the top side.
 startActionPane: ActionPane(
 // A motion is a widget used to control how the pane animates.
 motion: const ScrollMotion(),

 // A pane can dismiss the Slidable.
 dismissible: DismissiblePane(onDismissed: () {}),

 // All actions are defined in the children parameter.
 children: const [
 // A SlidableAction can have an icon and/or a label.
 SlidableAction(
 onPressed: null,
 backgroundColor: Color(0xFFFE4A49),
 foregroundColor: Colors.white,
 icon: Icons.delete,
 label: 'Delete',
 ),
 SlidableAction(
 onPressed: null,
 backgroundColor: Color(0xFF21B7CA),
 foregroundColor: Colors.white,
 icon: Icons.share,
 label: 'Share',
 ),
 ],
 ),

 // The end action pane is the one at the right or the bottom side.
 endActionPane: const ActionPane(
 motion: ScrollMotion(),
 children: [
 SlidableAction(
 // An action can be bigger than the others.
 flex: 2,
 onPressed: null,
 backgroundColor: Color(0xFF7BC043),
 foregroundColor: Colors.white,
 icon: Icons.archive,
 label: 'Archive',
 ),
 SlidableAction(
 onPressed: null,
 backgroundColor: Color(0xFF0392CF),
 foregroundColor: Colors.white,
 icon: Icons.save,
 label: 'Save',
 ),
 ],
 ),

 // The child of the Slidable is what the user sees when the
 // component is not dragged.
 child: const ListTile(title: Text('Slide me')),
 ),

 */
