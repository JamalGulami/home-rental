import 'package:flutter/material.dart';
import 'package:home_search/modul/house_model.dart';
import 'package:home_search/screen/detail/detail.dart';
import 'package:home_search/screen/home/widget/circuler_icon_button.dart';

class recommended_house extends StatefulWidget {
  @override
  _recommended_houseState createState() => _recommended_houseState();
}

class _recommended_houseState extends State<recommended_house> {
  final recommendedList = House.generateRecommended();
  List<bool> isFavoriteList = List.filled(House.generateRecommended().length, false);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 340,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return detail_page(house: recommendedList[index]);
                },
              ),
            );
          },
          child: Container(
            height: 450,
            width: 270,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xFFF5F6F6),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        recommendedList[index].imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 15,
                  child: CirculerIconButton(
                    iconUrl: 'assets/icons/bookmark01.svg',
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.white54,
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              recommendedList[index].name,
                              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              recommendedList[index].address,
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 15,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavoriteList[index] = !isFavoriteList[index];
                      });
                    },
                    child: CirculerIconButton(
                      iconUrl: 'assets/icons/heart.svg',
                      color: isFavoriteList[index] ? Colors.red : Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (_, index) => SizedBox(width: 20),
        itemCount: recommendedList.length,
      ),
    );
  }
}