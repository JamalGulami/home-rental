import 'package:flutter/material.dart';
import 'package:home_search/modul/home_model.dart';
import 'package:home_search/screen/detail/detail.dart';

class Search_page extends StatefulWidget {
  const Search_page({Key? key}) : super(key: key);

  @override
  State<Search_page> createState() => _Search_pageState();
}

class _Search_pageState extends State<Search_page> {
  static List<Home_model> main_home_list = [
    Home_model("قصر طلایی", " سرک دارلاامان,قصر دارلاامان,کوچه سوم", 'assets/image/image1.JPEG'),
    Home_model("قصر پایتخت", "کابل دشت برچی نارسیده به تانگ تیل", 'assets/image/image2.JPEG'),
    Home_model("قصر دارلمان", "کابل سرک دارلمان ", 'assets/image/image4.JPEG'),
    Home_model("خانه فامیلی ", "کابل دشت برچی اسیادگاه نقاش کوچه اول", 'assets/image/image3.JPEG'),
    Home_model("ویلای شهر", "کابل سرک سرای شمالی کارته پروان", 'assets/image/image.JPEG'),
    Home_model("ویلای دهقان", "کابل سرک پنج کارته چهار", 'assets/image/image5.JPEG'),
    Home_model("ویلای شهر", "کابل سرک سرای شمالی کارته پروان", 'assets/image/image.JPEG'),
    Home_model("قصر طلایی", " سرک دارلاامان,قصر دارلاامان,کوچه سوم", 'assets/image/image1.JPEG'),
    Home_model("قصر پایتخت", "کابل دشت برچی نارسیده به تانگ تیل", 'assets/image/image2.JPEG'),
    Home_model("قصر دارلمان", "کابل سرک دارلمان ", 'assets/image/image4.JPEG'),
    Home_model("خانه فامیلی ", "کابل دشت برچی اسیادگاه نقاش کوچه اول", 'assets/image/image3.JPEG'),
    Home_model("ویلای شهر", "کابل سرک سرای شمالی کارته پروان", 'assets/image/image.JPEG'),
    Home_model("ویلای دهقان", "کابل سرک پنج کارته چهار", 'assets/image/image5.JPEG'),
    Home_model("ویلای شهر", "کابل سرک سرای شمالی کارته پروان", 'assets/image/image.JPEG'),
  ];
  List<Home_model> display_list = List.from(main_home_list);

  void updateList(String value) {
    setState(() {
      display_list = main_home_list
          .where((element) =>
          element.home_name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFFF5F6F6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'خانه مورید علاقه خود را جستجو کنید!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 0,
            child: TextField(
              onChanged: (value) => updateList(value),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'جستجو...',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: display_list.length == 0
                ? Center(
              child: Text(
                'هیچ نتیجه یی یافت نشد!',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            )
                : ListView.builder(
              itemCount: display_list.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  display_list[index].home_name!,
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  display_list[index].home_adderss!,
                  style: TextStyle(color: Colors.black26),
                ),
                leading: Image.asset(display_list[index].home_imageUrl!,

                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}