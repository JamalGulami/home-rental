import 'package:flutter/material.dart';
import 'package:home_search/modul/house_model.dart';
import 'package:home_search/screen/detail/detail.dart';
import 'package:home_search/screen/home/widget/circuler_icon_button.dart';
class Previous_Home extends StatefulWidget {
  const Previous_Home({super.key});

  @override
  State<Previous_Home> createState() => _Previous_HomeState();
}

class _Previous_HomeState extends State<Previous_Home> {
  final listOffer = House.generateBestOffer();
  List<bool> favoriteList = List<bool>.generate(
    House.generateBestOffer().length,
        (index) => false,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            SizedBox(height: 10),
            ...listOffer.asMap().entries.map((entry) {
              final index = entry.key;
              final el = entry.value;
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
                          SizedBox(height: 10),
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
                      top: 0,
                      right: 0,
                      child: Text(
                        'حذف',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          decoration: TextDecoration.none, // Add this line
                        ),
                      ),
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
            }).toList(),
          ],
        ),
      ),
    );
  }
}
