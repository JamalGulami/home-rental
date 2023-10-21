
import 'package:flutter/material.dart';

class Catagroi_list extends StatefulWidget {
  const Catagroi_list({super.key});

  @override
  State<Catagroi_list> createState() => _Catagroi_listState();
}
final catagoriesList=[
  'پشنهاد شده',
  'کلبه هایی تفریحی',
  'مشهورترین ها',
  'شبانه روزی'
];
int currentSelect=0;

class _Catagroi_listState extends State<Catagroi_list> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: ListView.separated(

        padding: EdgeInsets.symmetric(horizontal: 16),
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index)=> GestureDetector(
            onTap: (){
              setState(() {
                currentSelect = index;
              });
            },
          child: Container(
            alignment: Alignment.center,

            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentSelect == index
                      ? Theme.of(context).primaryColor
                      : Colors.transparent, width: 3))),

            child: Text(
              catagoriesList[index],
              style: TextStyle(
                color: currentSelect == index
                    ?Theme.of(context).primaryColor
                    :Theme.of(context).textTheme.bodyLarge!.color,
                fontSize: currentSelect == index ? 20 : 16,
                fontWeight: currentSelect == index ? FontWeight.bold : FontWeight.normal,

              ),
            ),
          )
          ),
          separatorBuilder: (_, index)=> SizedBox(width: 15,),
          itemCount: catagoriesList.length),

    );
  }
}
