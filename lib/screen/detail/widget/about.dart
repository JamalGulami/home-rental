import 'dart:ui';

import 'package:flutter/material.dart';
class About extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child:Column(
        children: [
          Text('درباره اقامتگاه',
          style: Theme.of(context).textTheme.headlineLarge!
            .copyWith(fontSize: 18,fontWeight: FontWeight.bold),),

          Text('این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              'این خانه دارایی امنبت خوب و همچنان برق دائمی می باشد'
              '',
          style: Theme.of(context).textTheme.bodyLarge!
            .copyWith(fontSize: 14),
          textAlign: TextAlign.end,),
        ],

      ),


    );
  }
}
