
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomWidgets{

static Widget  LoginTextfield(TextEditingController t,String text){
  return TextField(
    controller: t,

    decoration: InputDecoration(
      hintText: text,
        filled: true,
        fillColor: Colors.grey[300],
        border: OutlineInputBorder(

          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        )
    ),
  );

}


}