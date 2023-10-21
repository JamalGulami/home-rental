import 'package:flutter/material.dart';
import 'package:home_search/modul/home_model.dart';
import 'package:home_search/screen/detail/widget/about.dart';
import 'package:home_search/screen/detail/widget/comment.dart';
import 'package:home_search/screen/detail/widget/comment_list.dart';
import 'package:home_search/screen/detail/widget/contant_intro.dart';
import 'package:home_search/screen/detail/widget/detail_app_bar.dart';
import 'package:home_search/screen/detail/widget/house_info.dart';

import '../../modul/house_model.dart';
class detail_page extends StatelessWidget {
  final House house;
  const detail_page({super.key,
  required this.house, required });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
           DetailAppBar(house: house),
           SizedBox(height: 30),
           Contantintro(house: house),
           SizedBox(height: 20,),
           HouseInfo(),
           SizedBox(height: 20),
           About(),
           Title_Comment(),
           Comment_List(),
           //Comment_botton(),
            //////////////////////////////////////////////Comment///////////////////
            Padding(
              padding: EdgeInsets.all(20),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Comment_button()));
              },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white60),
                  ),
                  child: Text('اضافه نظر',
                style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold)))),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(15),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: Theme.of(context).primaryColor,
            ),
            child: Container(
              height: 55,

              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text('ارتبات با صاحب خانه',
                style: TextStyle(color: Colors.white,
                    fontSize: 16,fontWeight: FontWeight.bold),),

            ),
          ),
        ),
      ),




    );
  }
}
