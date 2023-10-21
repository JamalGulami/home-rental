import 'package:flutter/material.dart';
class WelcomText extends StatelessWidget {
  const WelcomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('خوش آمدید!',
          style: TextStyle(color: Colors.black45,
              fontSize: 16,fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 10,),
          Text('خانه مورد علاقه خود را پیدا کنید ',
          style: Theme.of(context).textTheme
              .headlineLarge?.copyWith(fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ],
      ),

    );
  }
}
