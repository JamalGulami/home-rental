import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:home_search/pages/add_page.dart';
import 'package:home_search/pages/favorite_page.dart';
import 'package:home_search/pages/search_page.dart';
import 'package:home_search/screen/home/widget/Home_page.dart';


class Myhome_page extends StatefulWidget {
  const Myhome_page({super.key});

  @override
  State<Myhome_page> createState() => _Myhome_pageState();
}

class _Myhome_pageState extends State<Myhome_page> {
  String currentPageName= 'home';
  final Map<String , Widget> children = <String, Widget>{
    'home': new HomePage(),
    'search': new Search_page(),
    'plus': new Add_page(),
    'favorite': new Favorite_page(),
  };

  changePage(String namePage){
    setState(() {
      currentPageName = namePage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'مسکن یاب',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.end,
          ),
        ),

      ),

      body: this.children[currentPageName],

      drawer: Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Jamal'),
              accountEmail: Text('jamalghulami82@gmail.com'),
              currentAccountPicture:
              CircleAvatar(
                backgroundImage: AssetImage('assets/image/avatar.JPG'),),),
            Text('Menu',style: TextStyle(color: Colors.grey,fontSize: 18),),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.home),
            ),
            ListTile(
              title: Text('close'),
              trailing: Icon(Icons.close),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: GNav(
          backgroundColor: Color(0xFFF5F6F6),

          tabBackgroundColor: Colors.grey,
          padding: EdgeInsets.all(16),
          gap: 5,
          onTabChange: (index){
            print(index);
          },
          tabs: [
            GButton(icon: Icons.home,
              onPressed: (){changePage('home');},
              text: 'Home',),
            GButton(icon: Icons.search,
              onPressed: (){changePage('search');},
              text:'Search',),
            GButton(icon: Icons.add_box,
              onPressed: (){changePage('plus');},
              text: 'Add',),
            GButton(icon: Icons.favorite,
              onPressed: (){changePage('favorite');},
              text: 'Favorite',),
          ],

        ),
      ),
    );
  }
}











