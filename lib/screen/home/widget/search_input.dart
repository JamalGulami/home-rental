import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Search_input extends StatelessWidget {
  // const Search_input({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      
      height: 85,
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'جستجو',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Color(0xFFF5F6F6),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
            borderSide: BorderSide.none,
          ),

          prefixIcon: Container(
            padding: EdgeInsets.all(15),
            child: SvgPicture.asset('assets/icons/search.svg'),

          )
        ),
      ),

    );
  }
}
