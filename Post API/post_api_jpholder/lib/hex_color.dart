import 'package:flutter/material.dart';
class HexColor extends StatelessWidget {
  static const String routeName = '/hexColor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Add a container
        child: Container(
          width: 300,
          height: 300,
          //Now replacing it with an hex color #b51248
          //0xff is the prefix of every hex color
          // we remove the # from th hex color Lets see
          //Working Make a usefule hexColor Function
          //using function
          //Working Best of Luck
          color: Color(0xffF85606),
          child: Center(child: Text('Hello',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
      ),
    );
  }
}

int hexColor(String color) {
  //adding prefix
  String newColor = '0xff' + color;
  //removing # sign
  newColor = newColor.replaceAll('#', '');
  //converting it to the integer
  int finalColor = int.parse(newColor);
  return finalColor;
}