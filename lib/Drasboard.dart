
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/Screens/Home.dart';
import 'package:untitled3/Screens/dailyworkout.dart';
import 'package:untitled3/Screens/diet.dart';
import 'package:untitled3/Screens/setting.dart';

class Drashboard extends StatefulWidget {
  const Drashboard({Key? key}) : super(key: key);
  static const route="DrashBoard";
  @override
  State<Drashboard> createState() => _DrasboardState();
}

class _DrasboardState extends State<Drashboard> {
  int  currentindex=0;
  List<StatefulWidget> pages=[const Home(),DietScreen(),DailyChallenge(),Setting()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: Colors.white10,
        body: pages[currentindex],
            bottomNavigationBar:Theme(
              data: Theme.of(context).copyWith(
                  canvasColor: Colors.black,
                  splashColor: Colors.white,
                  unselectedWidgetColor: Colors.green,
                  primaryColor: Colors.red,
                  // textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.grey))
              ),
              child: bottomNavigationBar
            )
    ));
  }
  Widget get bottomNavigationBar {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child:BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        currentIndex: currentindex,
        onTap: (index)=>setState(() {
          currentindex=index;
        }),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.event_note_outlined,),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: "")
        ],),
    );
  }
}


