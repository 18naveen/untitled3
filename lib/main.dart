import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/Drasboard.dart';
import 'package:untitled3/Route.dart';
import 'package:untitled3/Screens/starter%20screen.dart';
import 'package:untitled3/backend/excercise.dart';
import 'package:untitled3/provider/userprovider.dart';
import 'package:untitled3/provider/workprovider.dart';

import 'Screens/workout.dart';

void main() {
;
  runApp(  MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=>workOut()),
    ChangeNotifierProvider(create: (context)=>UserProvider())

  ],child:const MyApp() ,) );
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:
      const StraterScreen(),
      // Drashboard(),
    );
  }
}
