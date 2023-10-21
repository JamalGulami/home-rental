import 'package:flutter/material.dart';
import 'package:home_search/modul/house_model.dart';
import 'package:home_search/screen/detail/detail.dart';
import 'package:home_search/screen/home/widget/circuler_icon_button.dart';
// Import the detail_page.dart file

class Best_Offer extends StatefulWidget {
  @override
  _Best_OfferState createState() => _Best_OfferState();
}

class _Best_OfferState extends State<Best_Offer> {
  final listOffer = House.generateBestOffer();
  List<bool> favoriteList = List<bool>.generate(
    House.generateBestOffer().length,
        (index) => false,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'پشنهاد ویژه',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'دیدن همه',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
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
                          color: favoriteList[index] ? Colors.red : Colors.grey,
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
    );
  }
}