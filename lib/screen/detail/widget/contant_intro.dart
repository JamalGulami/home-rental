import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../modul/house_model.dart';

class Contantintro extends StatelessWidget {
  final House house;
  const Contantintro({super.key, required this.house});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(house.name,style: Theme.of(context).textTheme.headlineLarge!
            .copyWith(fontSize: 20,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
          Text(house.address,style: Theme.of(context).textTheme.bodyLarge!
              .copyWith(fontSize: 18),),
          SizedBox(height: 5,),
          Text('500000  AF برای دو سال گرویی',style: Theme.of(context).textTheme.bodyLarge!
            .copyWith(fontSize: 18),),
          SizedBox(height: 5,),
          RichText(
              text: TextSpan(
                children:[
                  TextSpan(text: '4000  AF',
                  style: Theme.of(context).textTheme.bodyLarge!
                  .copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextSpan(text: ' برای هر ماه',
                      style: Theme.of(context).textTheme.bodyLarge!
                          .copyWith(fontSize: 16, )),
                ]
              ) )
        ],
      ),


    );
  }
}
