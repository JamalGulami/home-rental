
import 'package:flutter/material.dart';
import 'package:home_search/screen/home/home.dart';
//import 'package:persian_fonts/persian_fonts.dart';


void main(){
  runApp(Myapp());

}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Persian Fonts Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: const Color(0xFFFFFFF9),

        primaryColor: Color(0xFF811B83),

        hintColor: Color(0xFFFFFFF9),
        textTheme: TextTheme(
          headlineLarge: TextStyle(color: Color(0xFF100E34),
        ),
          bodyLarge: TextStyle(color: Color(0xFF100E34).withOpacity(0.5)),
        )

      ),

      home: new Directionality(textDirection: TextDirection.rtl,
          child: Myhome_page())


    );

  }
}
