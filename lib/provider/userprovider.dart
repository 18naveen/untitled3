


import 'package:flutter/widgets.dart';
import 'package:untitled3/backend/Db.dart';

import '../backend/models/usermodel.dart';

class UserProvider extends ChangeNotifier{
  bool validuser=true;
  bool userchek=false;
  late User? usr;
   setUser(User? user){

     userchek=true;
     usr=user;
     notifyListeners();

   }

}