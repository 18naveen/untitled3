
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/Screens/Home.dart';
import 'package:untitled3/Screens/detailscren.dart';
import 'package:untitled3/provider/userprovider.dart';
import 'package:untitled3/widgets/customtext.dart';

import '../backend/Db.dart';

class StraterScreen extends StatefulWidget {
  const StraterScreen({Key? key}) : super(key: key);

  @override
  State<StraterScreen> createState() => _StraterScreenState();
}

class _StraterScreenState extends State<StraterScreen> {
  TextEditingController t1= TextEditingController();
  TextEditingController t2= TextEditingController();
  late bool loading;

  getdata(String id){
    print(id);
    Provider.of<UserProvider>(context,listen: false).userchek=false;
    Provider.of<UserProvider>(context,listen: false).notifyListeners();
    var x=()async{ return await Db.get_user(id, context);};
    if (x=="Success"){
      Provider.of<UserProvider>(context,listen: false).userchek=true;
      Provider.of<UserProvider>(context,listen: false).notifyListeners();
    }else {
      Provider
          .of<UserProvider>(context, listen: false)
          .userchek = true;
      Provider
          .of<UserProvider>(context, listen: false)
          .userchek = true;
      Provider.of<UserProvider>(context, listen: false).notifyListeners();
    }
  }
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return
      Scaffold(
       backgroundColor:Colors.grey[800],
       body:   !Provider.of<UserProvider>(context).userchek ? Center(
         child: Container(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white) ,
            // color: Colors.black,
             height: size.height*0.5,
            width: size.width*0.8,
            child: Column(
              // mainAxisSize: ,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Login",style: TextStyle(color: Colors.black,fontSize: 30),),
              CustomWidgets.LoginTextfield(t1,"GYM ID"),
              CustomWidgets.LoginTextfield(t2,"Password"),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Colors.black ,
                  ),
                  child: TextButton(onPressed: ()
                  {
                    getdata(t1.text);

                    Navigator.popAndPushNamed(context, Home.route);
                     }, child: const Text("Login",style: TextStyle(color: Colors.white),))),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    color:Colors.black ,
                  ),
                  child: TextButton(onPressed: ()=>Navigator.popAndPushNamed(context, DetailScreen.route), child: const Text("create",style: TextStyle(color: Colors.white),)))
            ],
    )

    ),
       ):Center(child: CircularProgressIndicator()),
     )
    ;
  }
}
