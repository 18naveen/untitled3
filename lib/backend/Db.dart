


import 'package:appwrite/appwrite.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/Screens/excercise.dart';
import 'package:untitled3/Screens/workout.dart';
import 'package:untitled3/backend/models/usermodel.dart';
import 'package:untitled3/provider/userprovider.dart';
import 'package:untitled3/provider/workprovider.dart';

class Db {
 static Future<void> get_Workouts(excercises type,BuildContext context) async{
   List<excercise> wlst=[
     excercise("name1", 2, " videourl"),
     excercise("name2", 2, "videourl"),
     excercise("name3", 2, "videourl"),
     excercise("name4", 2, "videourl"),
     excercise("name5", 2, "videourl"),
     excercise("name6", 2, "videourl"),
     excercise("name7", 2, "videourl"),
     ];
   Provider.of<workOut>(context,listen:false).set_workout(wlst);
 }
 static Future<String> get_user(String id ,BuildContext context) async{
   String ans ="Success";
   Client client = Client();
   client
       .setEndpoint('https://cloud.appwrite.io/v1')
       .setProject('64c889023cfbda551802')
       .setSelfSigned(status: true);

   Account account = Account(client);
   Databases dB=Databases(client);
   try {
   var FFG=await dB.getDocument(databaseId: "64cdf71012fec8fb914a", collectionId: "64cdf7225496ab007107", documentId: id,);
   print(FFG.data);
   Provider.of<UserProvider>(context,listen: false).setUser(User.FromJSon(FFG.data));

   }catch(e){
     ans=e.toString();
   }
   print("/////////////////////// FFG.data ////////////////////////");
   return ans;
 }
}