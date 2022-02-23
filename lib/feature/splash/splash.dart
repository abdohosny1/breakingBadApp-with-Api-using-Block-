import 'dart:async';

import 'package:breakingbad_api_with_block/feature/character_list/view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
     Timer(
     const Duration(
        seconds: 4,),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>  const CharacterView()))
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const  BoxDecoration(
        image:  DecorationImage(
          image: AssetImage('assets/images/splash.jpg'),
          fit: BoxFit.fill
        )
      ),
    );
  }
}