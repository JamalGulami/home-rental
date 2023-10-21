import 'package:flutter/material.dart';
import 'package:home_search/modul/house_model.dart';
import 'package:home_search/screen/home/widget/circuler_icon_button.dart';
import 'package:home_search/screen/detail/detail.dart';

class Favorite_page extends StatefulWidget {
  const Favorite_page({Key? key}) : super(key: key);

  @override
  State<Favorite_page> createState() => _Favorite_pageState();
}

class _Favorite_pageState extends State<Favorite_page> {
  final listOffer = House.generateBestOffer();
  List<bool> favoriteList = List<bool>.generate(
    House.generateBestOffer().length,
        (index) => false,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              'خانه هایی مورد علاقه شما!',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            pinned: true,
            floating: true,
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  final el = listOffer[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => detail_page(house: el),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F6F6),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 150,
                                height: 80,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(el.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    el.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    el.address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            left: 0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  favoriteList[index] = !favoriteList[index];
                                });
                              },
                              child: CirculerIconButton(
                                iconUrl: 'assets/icons/heart.svg',
                                color: favoriteList[index]
                                    ? Colors.red
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                childCount: listOffer.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}