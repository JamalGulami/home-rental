import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CirculerIconButton extends StatelessWidget {

  final String iconUrl;
  final Color color;
  const CirculerIconButton({super.key,
  required this.iconUrl,
  required this.color});


  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 30,
      height: 30,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,

      ),
      child: SvgPicture.asset(iconUrl),

    );
  }
}
