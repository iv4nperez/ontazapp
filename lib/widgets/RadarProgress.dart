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
        Center(
          child: SizedBox(
            height: 300,
            width: 300,
            child: Lottie.asset('assets/mapSearch.json')
          ),
        ),
        SizedBox(height: 8,),
        Center(child: Text(textLoading, style: TextStyle( color: Colors.black26),))
      ],
    );
  }
}