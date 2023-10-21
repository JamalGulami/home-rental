import 'package:flutter/material.dart';
import 'package:home_search/screen/home/widget/Recommended_house.dart';
import 'package:home_search/screen/home/widget/best_offer.dart';
import 'package:home_search/screen/home/widget/search_input.dart';
import 'package:home_search/screen/home/widget/welcom_text.dart';

import 'Catagories.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            WelcomText(),
            Search_input(),
            Catagroi_list(),
            recommended_house(),
            Best_Offer(),
    ],
        ),
      ),

    );
  }
}
