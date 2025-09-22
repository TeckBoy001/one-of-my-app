import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List get images => [
    "screenshot_291.png",
    "screenshot_292.png",
    "screenshot_293.png",
  ];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount:images.length,
      itemBuilder: (_,index){
      
  return Container( 
    width: double.maxFinite,
     height: double.maxFinite,
     decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          "assets/img/${images[index]}"
        ),
        fit: BoxFit.cover
      )
     ),


      child: Container(
        margin: EdgeInsets.only(top:150,left:20,right:20),
      ),
    );
 
      }


    )       

  
  );
}
}