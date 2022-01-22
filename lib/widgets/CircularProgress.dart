import 'package:flutter/material.dart';

class CircularProgress extends StatelessWidget {

  final Color color;
  final double size;
  final double strokeWidth;
  final String textLoader;
  final String subTextLoader;
  final bool showText;


  const CircularProgress({
    this.strokeWidth = 2,
    this.color = Colors.black,
    this.size = 80,
    this.textLoader = 'Cargando...',
    this.subTextLoader = '',
    this.showText = true
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: CircularProgressIndicator(
              strokeWidth:  strokeWidth,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xff072146)),
            ),
            height: size,
            width: size,
          ),
        showText ? SizedBox(
            height: 10,
          ) : Container(),
        showText ? Text(textLoader,style: TextStyle(color: Color(0xff072146)),) : Container(),
        showText ? SizedBox(
            height: 12,
          ) : Container(),
        showText ? Text(subTextLoader, style: TextStyle(color: Color(0xff072146))) : Container()
        ],
      )
    );
  }
}