import 'package:flutter/material.dart';
import 'package:home_search/screen/add_page/add_home.dart';
import 'package:home_search/screen/add_page/previous_home.dart';

class Add_page extends StatelessWidget {
  const Add_page({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: AssetImage('assets/image/image02.WEBP'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 80),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Navigate to add_page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Add_Home(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text('اضافه نمودن خانه جدید',
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ),
                          SizedBox(height: 20,),
                          GestureDetector(
                            onTap: () {
                              // Navigate to previous_page
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Previous_Home(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Text('خانه هایی ازقبل اضافه شده',
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}