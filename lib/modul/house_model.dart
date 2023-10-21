//import 'package:home_search/screen/home/widget/Recommended_house.dart';

class House{
  String name;
  String address;
  String imageUrl;
  House(this.name, this.address, this.imageUrl);
  static List<House> generateRecommended(){
    return[
      House("قصر طلایی","سرک دارلاامان,قصر دارلاامان,کوچه سوم",
      'assets/image/image1.JPEG'),
        House("ویلای شهر","کابل سرک سرای شمالی کارته پروان",
          'assets/image/image.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی اسیادگاه نقاش کوچه اول",
          'assets/image/image3.JPEG'),
      House("قصر دارلمان","کابل سرک دارلمان ",
          'assets/image/image4.JPEG'),
      House("قصر پایتخت","کابل دشت برچی نارسیده به تانگ تیل",
          'assets/image/image2.JPEG'),
    ];
  }
  static List<House> generateBestOffer(){
    return[
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی شهرک حاجی نبی",
          'assets/image/image6.JPEG'),
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی شهرک حاجی نبی",
          'assets/image/image6.JPEG'),
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی شهرک حاجی نبی",
          'assets/image/image6.JPEG'),
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی شهرک حاجی نبی",
          'assets/image/image6.JPEG'),
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),


    ];
  }
  static List<House> generateMoreOffer(){
    return[
      House("ویلای دهقان","کابل سرک پنج کارته چهار",
          'assets/image/image5.JPEG'),
      House("خانه فامیلی ","کابل دشت برچی شهرک حاجی نبی",
          'assets/image/image6.JPEG'),
    ];
  }
}