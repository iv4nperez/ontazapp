import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RadarProgress extends StatelessWidget {

  final String textLoading;

  const RadarProgress({ required this.textLoading });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Lottie.asset('assets/radar.json'),
         SizedBox(height: 8,),
        Text(textLoading, style: TextStyle( color: Colors.black26),)
      ],
    );
  }
}