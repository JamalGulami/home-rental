import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HouseInfo extends StatelessWidget {
  const HouseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  contant:'3bedroom\n 2 room',),
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  contant:'3bedroom\n 2 room'),
            ],
          ),
          SizedBox(height: 10,width: 40,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  contant:'3bedroom\n 2 room'),
              MenuInfo(
                  imageUrl: 'assets/icons/bedroom.svg',
                  contant:'3bedroom\n 2 room'),
            ],
          )
        ],
      ),

    );
  }
}


class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String contant;

  const MenuInfo({super.key,
  required this.imageUrl,
  required this.contant});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Expanded(
        child: Row(

          children: [
          SvgPicture.asset(imageUrl),
          SizedBox(width: 20),
          Text(contant,
          style: Theme.of(context).textTheme.bodyLarge!
            .copyWith(fontSize: 14),
          textAlign: TextAlign.end,),
        ],),
      ),


    );
  }
}
