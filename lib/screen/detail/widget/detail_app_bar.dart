import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../modul/house_model.dart';
class DetailAppBar extends StatelessWidget {
  final House house;
  const DetailAppBar({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          Image.asset(
            house.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,

          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset('assets/icons/arrow.svg'),

                  ),
                ),

            ],
          ),
              ))
        ],
      ),

    );
  }
}



// Container(
//   height: 30,
//   width: 30,
//   padding: EdgeInsets.all(5),
//   decoration: BoxDecoration(
//     color: Theme.of(context).colorScheme.secondary,
//     shape: BoxShape.circle,
//   ),
//   child: SvgPicture.asset('assets/icons/bookmark.svg'),
//
// ),
